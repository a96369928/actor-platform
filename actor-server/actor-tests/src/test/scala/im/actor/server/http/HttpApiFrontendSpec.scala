package im.actor.server.http

import java.nio.file.Paths

import scala.concurrent.forkjoin.ThreadLocalRandom

import akka.http.scaladsl.model.HttpMethods.GET
import akka.http.scaladsl.model.StatusCodes.{ OK, BadRequest, NotFound }
import org.scalatest.Inside._
import akka.http.scaladsl.Http
import akka.http.scaladsl.model.{ HttpMethods, HttpRequest, StatusCodes }
import akka.util.ByteString
import com.amazonaws.auth.EnvironmentVariableCredentialsProvider
import com.amazonaws.services.s3.transfer.TransferManager
import com.github.dwhjames.awswrap.s3.AmazonS3ScalaClient
import org.specs2.execute.PendingUntilFixed
import play.api.libs.json._

import im.actor.api.rpc.ClientData
import im.actor.server.api.http.json.{ JsonImplicits, AvatarUrls }
import im.actor.server.api.http.{ HttpApiConfig, HttpApiFrontend }
import im.actor.server.api.rpc.service.auth.AuthSmsConfig
import im.actor.server.api.rpc.service.groups.{ GroupInviteConfig, GroupsServiceImpl }
import im.actor.server.api.rpc.service.{ GroupsServiceHelpers, messaging }
import im.actor.server.oauth.{ GmailProvider, OAuth2GmailConfig }
import im.actor.server.peermanagers.{ GroupPeerManager, PrivatePeerManager }
import im.actor.server.presences.{ GroupPresenceManager, PresenceManager }
import im.actor.server.social.SocialManager
import im.actor.server.util.{ ImageUtils, FileUtils, ACLUtils }
import im.actor.server.{ BaseAppSuite, models, persist }

class HttpApiFrontendSpec extends BaseAppSuite with GroupsServiceHelpers with PendingUntilFixed {
  behavior of "HttpApiFrontend"

  "Webhooks handler" should "respond with OK to webhooks text message" in t.textMessage()

  //  it should "respond with OK to webhooks document message" in t.documentMessage()//TODO: not implemented yet

  //  it should "respond with OK to webhooks image message" in t.imageMessage()//TODO: not implemented yet

  "Groups handler" should "respond with JSON message to group invite info with correct invite token" in t.groupInvitesOk()

  it should "respond with JSON message with avatar full links to group invite info with correct invite token" in t.groupInvitesAvatars1()

  it should "respond with JSON message with avatar partial links to group invite info with correct invite token" in t.groupInvitesAvatars2()

  it should "respond with Not Acceptable to group invite info with invalid invite token" in t.groupInvitesInvalid()

  it should "respond BadRequest to unknown message format" in t.malformedMessage()

  "Files handler" should "serve correct file path" in pendingUntilFixed(t.filesCorrect())

  it should "respond with not found to non existing file" in pendingUntilFixed(t.notFound())

  it should "not allow path traversal" in pendingUntilFixed(t.pathTraversal())

  implicit val sessionRegion = buildSessionRegionProxy()
  implicit val seqUpdManagerRegion = buildSeqUpdManagerRegion()
  implicit val socialManagerRegion = SocialManager.startRegion()
  implicit val presenceManagerRegion = PresenceManager.startRegion()
  implicit val groupPresenceManagerRegion = GroupPresenceManager.startRegion()
  implicit val privatePeerManagerRegion = PrivatePeerManager.startRegion()
  implicit val groupPeerManagerRegion = GroupPeerManager.startRegion()

  val bucketName = "actor-uploads-test"
  val awsCredentials = new EnvironmentVariableCredentialsProvider()
  implicit val transferManager = new TransferManager(awsCredentials)
  implicit val client = new AmazonS3ScalaClient(awsCredentials)
  val groupInviteConfig = GroupInviteConfig("http://actor.im")

  implicit val service = messaging.MessagingServiceImpl(mediator)
  val oauth2GmailConfig = OAuth2GmailConfig.fromConfig(system.settings.config.getConfig("oauth.v2.gmail"))
  implicit val oauth2Service = new GmailProvider(oauth2GmailConfig)
  implicit val authSmsConfig = AuthSmsConfig.fromConfig(system.settings.config.getConfig("auth"))
  implicit val authService = buildAuthService()
  implicit val groupsService = new GroupsServiceImpl("", groupInviteConfig)

  object t {
    val (user1, authId1, _) = createUser()
    val (user2, authId2, _) = createUser()
    val sessionId = createSessionId()
    implicit val clientData = ClientData(authId1, sessionId, Some(user1.id))

    val groupName = "Test group"
    val groupOutPeer = createGroup(groupName, Set(user2.id)).groupPeer

    val resourcesPath = Paths.get(getClass.getResource("/").toURI).toFile.getCanonicalPath
    val config = HttpApiConfig("https://api.actor.im", "localhost", 9000, resourcesPath)
    HttpApiFrontend.start(config, "actor-uploads-test")

    val http = Http()

    def textMessage() = {
      whenReady(db.run(persist.GroupBot.findByGroup(groupOutPeer.groupId))) { bot ⇒
        bot shouldBe defined
        val botToken = bot.get.token
        val request = HttpRequest(
          method = HttpMethods.POST,
          uri = s"http://${config.interface}:${config.port}/v1/webhooks/$botToken",
          entity = """{"text":"Good morning everyone!"}"""
        )
        whenReady(http.singleRequest(request)) { resp ⇒
          resp.status shouldEqual OK
        }
      }
    }

    def documentMessage() = {
      whenReady(db.run(persist.GroupBot.findByGroup(groupOutPeer.groupId))) { bot ⇒
        bot shouldBe defined
        val botToken = bot.get.token
        val request = HttpRequest(
          method = HttpMethods.POST,
          uri = s"http://${config.interface}:${config.port}/v1/webhooks/$botToken",
          entity = """{"document_url":"http://www.scala-lang.org/docu/files/ScalaReference.pdf"}"""
        )
        whenReady(http.singleRequest(request)) { resp ⇒
          resp.status shouldEqual OK
        }
      }
    }

    def imageMessage() = {
      whenReady(db.run(persist.GroupBot.findByGroup(groupOutPeer.groupId))) { bot ⇒
        bot shouldBe defined
        val botToken = bot.get.token
        val request = HttpRequest(
          method = HttpMethods.POST,
          uri = s"http://${config.interface}:${config.port}/v1/webhooks/$botToken",
          entity = """{"image_url":"http://www.scala-lang.org/resources/img/smooth-spiral.png"}"""
        )
        whenReady(http.singleRequest(request)) { resp ⇒
          resp.status shouldEqual OK
        }
      }
    }

    def malformedMessage() = {
      whenReady(db.run(persist.GroupBot.findByGroup(groupOutPeer.groupId))) { bot ⇒
        bot shouldBe defined
        val botToken = bot.get.token
        val request = HttpRequest(
          method = HttpMethods.POST,
          uri = s"http://${config.interface}:${config.port}/v1/webhooks/$botToken",
          entity = """{"WRONG":"Should not be parsed"}"""
        )
        whenReady(http.singleRequest(request)) { resp ⇒
          resp.status shouldEqual BadRequest
        }
      }
    }

    def groupInvitesOk() = {
      val token = ACLUtils.accessToken(ThreadLocalRandom.current())
      val inviteToken = models.GroupInviteToken(groupOutPeer.groupId, user1.id, token)
      whenReady(db.run(persist.GroupInviteToken.create(inviteToken))) { _ ⇒
        val request = HttpRequest(
          method = GET,
          uri = s"http://${config.interface}:${config.port}/v1/groups/invites/$token"
        )
        val resp = whenReady(http.singleRequest(request))(identity)
        resp.status shouldEqual OK
        whenReady(resp.entity.dataBytes.runFold(ByteString.empty)(_ ++ _).map(_.decodeString("utf-8"))) { body ⇒
          val response = Json.parse(body)
          (response \ "group" \ "title").as[String] shouldEqual groupName
          (response \ "inviter" \ "name").as[String] shouldEqual user1.name
        }
      }
    }

    def groupInvitesAvatars1() = {
      val avatarFile = Paths.get(getClass.getResource("/valid-avatar.jpg").toURI).toFile
      val fileLocation = whenReady(db.run(FileUtils.uploadFile(bucketName, "avatar", avatarFile)))(identity)

      whenReady(db.run(ImageUtils.scaleAvatar(fileLocation.fileId, ThreadLocalRandom.current(), bucketName))) { result ⇒
        result should matchPattern { case Right(_) ⇒ }
        val avatar = ImageUtils.getAvatarData(models.AvatarData.OfGroup, groupOutPeer.groupId, result.right.toOption.get)
        whenReady(db.run(persist.AvatarData.createOrUpdate(avatar)))(_ ⇒ ())
      }

      val token = ACLUtils.accessToken(ThreadLocalRandom.current())
      val inviteToken = models.GroupInviteToken(groupOutPeer.groupId, user1.id, token)

      whenReady(db.run(persist.GroupInviteToken.create(inviteToken))) { _ ⇒
        val request = HttpRequest(
          method = GET,
          uri = s"http://${config.interface}:${config.port}/v1/groups/invites/$token"
        )

        val resp = whenReady(http.singleRequest(request))(identity)
        resp.status shouldEqual OK

        whenReady(resp.entity.dataBytes.runFold(ByteString.empty)(_ ++ _).map(_.decodeString("utf-8"))) { body ⇒
          import JsonImplicits.avatarUrlsFormat

          val response = Json.parse(body)
          (response \ "group" \ "title").as[String] shouldEqual groupName
          (response \ "inviter" \ "name").as[String] shouldEqual user1.name

          val avatarUrls = (response \ "group" \ "avatars").as[AvatarUrls]
          inside(avatarUrls) {
            case AvatarUrls(Some(small), Some(large), Some(full)) ⇒
              List(small, large, full) foreach (_ should startWith(s"https://$bucketName.s3.amazonaws.com"))
          }
          (response \ "inviter" \ "avatars").as[AvatarUrls] should matchPattern {
            case AvatarUrls(None, None, None) ⇒
          }
        }
      }
    }

    def groupInvitesAvatars2() = {
      val avatarFile = Paths.get(getClass.getResource("/valid-avatar.jpg").toURI).toFile
      val fileLocation = whenReady(db.run(FileUtils.uploadFile(bucketName, "avatar", avatarFile)))(identity)
      whenReady(db.run(ImageUtils.scaleAvatar(fileLocation.fileId, ThreadLocalRandom.current(), bucketName))) { result ⇒
        result should matchPattern { case Right(_) ⇒ }
        val avatar =
          ImageUtils.getAvatarData(models.AvatarData.OfGroup, groupOutPeer.groupId, result.right.toOption.get)
            .copy(smallAvatarFileId = None, smallAvatarFileHash = None, smallAvatarFileSize = None)
        whenReady(db.run(persist.AvatarData.createOrUpdate(avatar)))(_ ⇒ ())
      }

      val token = ACLUtils.accessToken(ThreadLocalRandom.current())
      val inviteToken = models.GroupInviteToken(groupOutPeer.groupId, user1.id, token)
      whenReady(db.run(persist.GroupInviteToken.create(inviteToken))) { _ ⇒
        val request = HttpRequest(
          method = GET,
          uri = s"http://${config.interface}:${config.port}/v1/groups/invites/$token"
        )
        val resp = whenReady(http.singleRequest(request))(identity)
        resp.status shouldEqual OK
        whenReady(resp.entity.dataBytes.runFold(ByteString.empty)(_ ++ _).map(_.decodeString("utf-8"))) { body ⇒
          import JsonImplicits.avatarUrlsFormat

          val response = Json.parse(body)
          (response \ "group" \ "title").as[String] shouldEqual groupName
          (response \ "inviter" \ "name").as[String] shouldEqual user1.name
          val avatarUrls = (response \ "group" \ "avatars").as[AvatarUrls]
          inside(avatarUrls) {
            case AvatarUrls(None, Some(large), Some(full)) ⇒
              List(large, full) foreach (_ should startWith(s"https://$bucketName.s3.amazonaws.com"))
          }
          (response \ "inviter" \ "avatars").as[AvatarUrls] should matchPattern {
            case AvatarUrls(None, None, None) ⇒
          }
        }
      }
    }

    def groupInvitesInvalid() = {
      val invalidToken = "Dkajsdljasdlkjaskdj329u90u32jdjlksRandom_stuff"
      val request = HttpRequest(
        method = GET,
        uri = s"http://${config.interface}:${config.port}/v1/groups/invites/$invalidToken"
      )
      val resp = whenReady(http.singleRequest(request))(identity)
      resp.status shouldEqual StatusCodes.NotAcceptable
    }

    def notFound() = {
      val request = HttpRequest(GET, s"http://${config.interface}:${config.port}/v1/files/neverExisted.txt")
      whenReady(http.singleRequest(request)) { resp ⇒
        resp.status shouldEqual NotFound
      }
    }

    def pathTraversal() = {
      val attack1 = "%2e%2e%2f%2e%2e%2f%2e%2e%2fetc%2Fpasswd"
      val r1 = HttpRequest(GET, s"http://${config.interface}:${config.port}/v1/files/$attack1")
      whenReady(http.singleRequest(r1)) { resp ⇒
        resp.status shouldEqual BadRequest
      }
      val attack2 = "..%2F..%2F..%2Fetc%2Fpasswd"
      val r2 = HttpRequest(GET, s"http://${config.interface}:${config.port}/v1/files/$attack2")
      whenReady(http.singleRequest(r2)) { resp ⇒
        resp.status shouldEqual BadRequest
      }
      val attack3 = "../../../etc/passwd"
      val r3 = HttpRequest(GET, s"http://${config.interface}:${config.port}/v1/files/$attack3")
      whenReady(http.singleRequest(r3)) { resp ⇒
        resp.status shouldEqual NotFound
      }
    }

    def filesCorrect() = {
      val r1 = HttpRequest(GET, s"http://${config.interface}:${config.port}/v1/files/reference.conf")
      whenReady(http.singleRequest(r1)) { resp ⇒
        resp.status shouldEqual OK
      }
      val r2 = HttpRequest(GET, s"http://${config.interface}:${config.port}/v1/files/logback.xml")
      whenReady(http.singleRequest(r2)) { resp ⇒
        resp.status shouldEqual OK
      }
      val r3 = HttpRequest(GET, s"http://${config.interface}:${config.port}/v1/files/valid-avatar.jpg")
      whenReady(http.singleRequest(r3)) { resp ⇒
        resp.status shouldEqual OK
      }
      val r4 = HttpRequest(GET, s"http://${config.interface}:${config.port}/v1/files/application.conf.example")
      whenReady(http.singleRequest(r4)) { resp ⇒
        resp.status shouldEqual OK
      }
    }
  }

}
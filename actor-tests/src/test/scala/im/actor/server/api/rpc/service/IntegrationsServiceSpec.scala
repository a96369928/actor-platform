package im.actor.server.api.rpc.service

import scala.concurrent.Future

import com.amazonaws.auth.EnvironmentVariableCredentialsProvider
import com.amazonaws.services.s3.transfer.TransferManager
import org.scalatest.Inside._

import im.actor.api.rpc._
import im.actor.api.rpc.integrtions.ResponseIntegrationToken
import im.actor.api.rpc.peers.{ OutPeer, PeerType }
import im.actor.server.api.rpc.service.groups.{ GroupInviteConfig, GroupsServiceImpl }
import im.actor.server.api.rpc.service.webhooks.IntegrationServiceHelpers.makeUrl
import im.actor.server.api.rpc.service.webhooks.IntegrationsServiceImpl
import im.actor.server.peermanagers.GroupPeerManager
import im.actor.server.persist
import im.actor.server.presences.{ GroupPresenceManager, PresenceManager }
import im.actor.server.social.SocialManager
import im.actor.server.webhooks.WebhooksConfig

class IntegrationsServiceSpec extends BaseServiceSuite with GroupsServiceHelpers {
  behavior of "IntegrationsService"

  it should "not allow non group members to get integration token" in t.e1

  it should "allow group members to get integration token" in t.e2

  it should "not allow ordinary group member to revoke integration token" in t.e3

  it should "allow group admin to revoke integration token" in t.e4

  object t {

    implicit val ec = system.dispatcher
    implicit val sessionRegion = buildSessionRegionProxy()
    implicit val seqUpdManagerRegion = buildSeqUpdManagerRegion()

    implicit val socialManagerRegion = SocialManager.startRegion()
    implicit val presenceManagerRegion = PresenceManager.startRegion()
    implicit val groupPresenceManagerRegion = GroupPresenceManager.startRegion()

    implicit val groupPeerManagerRegion = GroupPeerManager.startRegion()

    val bucketName = "actor-uploads-test"
    val awsCredentials = new EnvironmentVariableCredentialsProvider()
    implicit val transferManager = new TransferManager(awsCredentials)
    val groupInviteConfig = GroupInviteConfig("http://actor.im")

    implicit val groupsService = new GroupsServiceImpl(bucketName, groupInviteConfig)
    implicit val authService = buildAuthService()

    private val config = WebhooksConfig("http", "actor.im", 9000, "/v1/webhooks")
    val service = new IntegrationsServiceImpl(config)

    val (user1, user1AuthId1, _) = createUser()
    val user1AuthId2 = createAuthId(user1.id)

    val (user2, user2AuthId, _) = createUser()

    val sessionId = createSessionId()
    val clientData1 = ClientData(user1AuthId1, sessionId, Some(user1.id))
    val clientData2 = ClientData(user1AuthId2, sessionId, Some(user2.id))

    def e1(): Unit = {
      val outPeer = {
        implicit val clientData = clientData1
        val groupOutPeer = createGroup("Fun group", Set.empty).groupPeer
        OutPeer(PeerType.Group, groupOutPeer.groupId, groupOutPeer.accessHash)
      }
      whenReady(service.jhandleGetIntegrationToken(outPeer, clientData2))(_ should matchNotAuthorized)
    }

    def e2(): Unit = {
      val outPeer = {
        implicit val clientData = clientData1
        val groupOutPeer = createGroup("Fun group", Set(user2.id)).groupPeer
        OutPeer(PeerType.Group, groupOutPeer.groupId, groupOutPeer.accessHash)
      }

      val groupToken = whenReady(db.run(persist.GroupBot.findByGroup(outPeer.id)))(result ⇒ result.map(_.token).getOrElse(fail()))

      val getTokens = Future.sequence(List(
        service.jhandleGetIntegrationToken(outPeer, clientData2),
        service.jhandleGetIntegrationToken(outPeer, clientData1)
      ))

      whenReady(getTokens) { resps ⇒
        resps foreach { resp ⇒
          resp should matchPattern { case Ok(_) ⇒ }
          inside(resp) {
            case Ok(ResponseIntegrationToken(token, url)) ⇒
              token shouldEqual groupToken
              url shouldEqual makeUrl(config, token)
          }
        }
      }
    }

    def e3(): Unit = {
      val outPeer = {
        implicit val clientData = clientData1
        val groupOutPeer = createGroup("Fun group", Set(user2.id)).groupPeer
        OutPeer(PeerType.Group, groupOutPeer.groupId, groupOutPeer.accessHash)
      }

      val groupToken = whenReady(db.run(persist.GroupBot.findByGroup(outPeer.id)))(result ⇒ result.map(_.token).getOrElse(fail()))

      whenReady(service.jhandleRevokeIntegrationToken(outPeer, clientData2)) { resp ⇒
        val expected = CommonErrors.noPermission("Only admin can perform this action")
        inside(resp) {
          case Error(error: RpcError) ⇒
            error.code shouldEqual expected.code
            error.tag shouldEqual expected.tag
            error.userMessage shouldEqual expected.userMessage
            error.canTryAgain shouldEqual expected.canTryAgain
        }
      }

      whenReady(service.jhandleGetIntegrationToken(outPeer, clientData2)) { resp ⇒
        inside(resp) {
          case Ok(ResponseIntegrationToken(token, url)) ⇒
            token shouldEqual groupToken
            url shouldEqual makeUrl(config, token)
        }
      }
    }

    def e4(): Unit = {
      val outPeer = {
        implicit val clientData = clientData1
        val groupOutPeer = createGroup("Fun group", Set(user2.id)).groupPeer
        OutPeer(PeerType.Group, groupOutPeer.groupId, groupOutPeer.accessHash)
      }

      val groupToken = whenReady(db.run(persist.GroupBot.findByGroup(outPeer.id)))(result ⇒ result.map(_.token).getOrElse(fail()))

      val newTokenResponse =
        whenReady(service.jhandleRevokeIntegrationToken(outPeer, clientData1)) { resp ⇒
          inside(resp) {
            case Ok(ResponseIntegrationToken(token, url)) ⇒ token should not equal groupToken
          }
          resp.toOption.get
        }

      whenReady(service.jhandleGetIntegrationToken(outPeer, clientData2)) { resp ⇒
        inside(resp) {
          case Ok(ResponseIntegrationToken(token, url)) ⇒
            token shouldEqual newTokenResponse.token
            url shouldEqual newTokenResponse.url
        }
      }
    }

  }

}
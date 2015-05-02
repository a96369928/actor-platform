//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/EntityConverter.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/EntityConverter.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/AvatarImage.h"
#include "im/actor/model/api/DocumentEx.h"
#include "im/actor/model/api/DocumentExPhoto.h"
#include "im/actor/model/api/DocumentExVideo.h"
#include "im/actor/model/api/DocumentMessage.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/MessageState.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/PeerType.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExChangedAvatar.h"
#include "im/actor/model/api/ServiceExChangedTitle.h"
#include "im/actor/model/api/ServiceExGroupCreated.h"
#include "im/actor/model/api/ServiceExUserAdded.h"
#include "im/actor/model/api/ServiceExUserKicked.h"
#include "im/actor/model/api/ServiceExUserLeft.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/api/Sex.h"
#include "im/actor/model/api/TextMessage.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/AvatarImage.h"
#include "im/actor/model/entity/ContactRecord.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/entity/GroupMember.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/Sex.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/entity/content/FileRemoteSource.h"
#include "im/actor/model/entity/content/PhotoContent.h"
#include "im/actor/model/entity/content/ServiceContent.h"
#include "im/actor/model/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/model/entity/content/ServiceGroupCreated.h"
#include "im/actor/model/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/model/entity/content/ServiceGroupUserAdded.h"
#include "im/actor/model/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/model/entity/content/ServiceGroupUserLeave.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/entity/content/VideoContent.h"
#include "im/actor/model/modules/messages/entity/EntityConverter.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"


#line 48
@implementation ImActorModelModulesMessagesEntityEntityConverter

+ (AMMessageStateEnum *)convertWithImActorModelApiMessageStateEnum:(ImActorModelApiMessageStateEnum *)state {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessageStateEnum_(state);
}


#line 66
+ (AMAvatar *)convertWithImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_(avatar);
}


#line 75
+ (AMAvatarImage *)convertWithImActorModelApiAvatarImage:(ImActorModelApiAvatarImage *)avatarImage {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_(avatarImage);
}


#line 83
+ (AMFileReference *)convertWithImActorModelApiFileLocation:(ImActorModelApiFileLocation *)location
                                               withNSString:(NSString *)fileName
                                                    withInt:(jint)size {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFileLocation_withNSString_withInt_(location, fileName, size);
}


#line 87
+ (AMSexEnum *)convertWithImActorModelApiSexEnum:(ImActorModelApiSexEnum *)sex {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiSexEnum_(sex);
}


#line 103
+ (AMUser *)convertWithImActorModelApiUser:(ImActorModelApiUser *)user {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(user);
}


#line 111
+ (AMGroup *)convertWithImActorModelApiGroup:(ImActorModelApiGroup *)group {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiGroup_(group);
}


#line 116
+ (JavaUtilArrayList *)convertWithJavaUtilList:(id<JavaUtilList>)members
                                       withInt:(jint)admin {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithJavaUtilList_withInt_(members, admin);
}


#line 124
+ (AMPeerTypeEnum *)convertWithImActorModelApiPeerTypeEnum:(ImActorModelApiPeerTypeEnum *)peerType {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeerTypeEnum_(peerType);
}


#line 136
+ (AMPeer *)convertWithImActorModelApiPeer:(ImActorModelApiPeer *)peer {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(peer);
}

+ (AMAbsContent *)convertWithImActorModelApiMessage:(ImActorModelApiMessage *)content {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessage_(content);
}


#line 193
+ (AMFastThumb *)convertWithImActorModelApiFastThumb:(ImActorModelApiFastThumb *)fastThumb {
  return ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFastThumb_(fastThumb);
}

- (instancetype)init {
  ImActorModelModulesMessagesEntityEntityConverter_init(self);
  return self;
}

@end


#line 50
AMMessageStateEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessageStateEnum_(ImActorModelApiMessageStateEnum *state) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 51
  if (state == nil) {
    return AMMessageStateEnum_get_UNKNOWN();
  }
  switch ([state ordinal]) {
    case ImActorModelApiMessageState_READ:
    return AMMessageStateEnum_get_READ();
    case ImActorModelApiMessageState_RECEIVED:
    return AMMessageStateEnum_get_RECEIVED();
    case ImActorModelApiMessageState_SENT:
    return AMMessageStateEnum_get_SENT();
    default:
    return AMMessageStateEnum_get_UNKNOWN();
  }
}


#line 66
AMAvatar *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_(ImActorModelApiAvatar *avatar) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 67
  if (avatar == nil) {
    return nil;
  }
  return new_AMAvatar_initWithAMAvatarImage_withAMAvatarImage_withAMAvatarImage_(ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_([((ImActorModelApiAvatar *) nil_chk(avatar)) getSmallImage]), ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_(
#line 71
  [avatar getLargeImage]), ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_(
#line 72
  [avatar getFullImage]));
}


#line 75
AMAvatarImage *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatarImage_(ImActorModelApiAvatarImage *avatarImage) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 76
  if (avatarImage == nil) {
    return nil;
  }
  return new_AMAvatarImage_initWithInt_withInt_withAMFileReference_([((ImActorModelApiAvatarImage *) nil_chk(avatarImage)) getWidth], [avatarImage getHeight], ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFileLocation_withNSString_withInt_(
#line 80
  [avatarImage getFileLocation], @"avatar.jpg", [avatarImage getFileSize]));
}


#line 83
AMFileReference *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFileLocation_withNSString_withInt_(ImActorModelApiFileLocation *location, NSString *fileName, jint size) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 84
  return new_AMFileReference_initWithLong_withLong_withInt_withNSString_([((ImActorModelApiFileLocation *) nil_chk(location)) getFileId], [location getAccessHash], size, fileName);
}


#line 87
AMSexEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiSexEnum_(ImActorModelApiSexEnum *sex) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 88
  if (sex == nil) {
    return AMSexEnum_get_UNKNOWN();
  }
  switch ([sex ordinal]) {
    case ImActorModelApiSex_FEMALE:
    return AMSexEnum_get_FEMALE();
    case ImActorModelApiSex_MALE:
    return AMSexEnum_get_MALE();
    default:
    case ImActorModelApiSex_UNKNOWN:
    return AMSexEnum_get_UNKNOWN();
  }
}


#line 103
AMUser *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(ImActorModelApiUser *user) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 104
  JavaUtilArrayList *res = new_JavaUtilArrayList_init();
  [res addWithId:new_AMContactRecord_initWithInt_withLong_withInt_withNSString_withNSString_(0, 0, AMContactRecord_get_TYPE_PHONE_(), JreStrcat("J", [((ImActorModelApiUser *) nil_chk(user)) getPhone]), @"Mobile")];
  return new_AMUser_initWithInt_withLong_withNSString_withNSString_withAMAvatar_withAMSexEnum_withJavaUtilList_([user getId], [user getAccessHash], [user getName], [user getLocalName], ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_(
#line 107
  [user getAvatar]), ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiSexEnum_([user getSex]),
#line 108
  res);
}


#line 111
AMGroup *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiGroup_(ImActorModelApiGroup *group) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 112
  return new_AMGroup_initWithInt_withLong_withNSString_withAMAvatar_withJavaUtilList_withInt_withBoolean_([((ImActorModelApiGroup *) nil_chk(group)) getId], [group getAccessHash], [group getTitle], ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_([group getAvatar]), ImActorModelModulesMessagesEntityEntityConverter_convertWithJavaUtilList_withInt_(
#line 113
  [group getMembers], [group getCreatorUid]), [group getCreatorUid], [group isMember]);
}


#line 116
JavaUtilArrayList *ImActorModelModulesMessagesEntityEntityConverter_convertWithJavaUtilList_withInt_(id<JavaUtilList> members, jint admin) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 117
  JavaUtilArrayList *res = new_JavaUtilArrayList_init();
  for (ImActorModelApiMember * __strong m in nil_chk(members)) {
    [res addWithId:new_AMGroupMember_initWithInt_withInt_withLong_withBoolean_([((ImActorModelApiMember *) nil_chk(m)) getUid], [m getInviterUid], [m getDate], [m getUid] == admin)];
  }
  return res;
}


#line 124
AMPeerTypeEnum *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeerTypeEnum_(ImActorModelApiPeerTypeEnum *peerType) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 125
  switch ([peerType ordinal]) {
    case ImActorModelApiPeerType_EMAIL:
    return AMPeerTypeEnum_get_EMAIL();
    case ImActorModelApiPeerType_GROUP:
    return AMPeerTypeEnum_get_GROUP();
    default:
    case ImActorModelApiPeerType_PRIVATE:
    return AMPeerTypeEnum_get_PRIVATE();
  }
}


#line 136
AMPeer *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeer_(ImActorModelApiPeer *peer) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 137
  return new_AMPeer_initWithAMPeerTypeEnum_withInt_(ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiPeerTypeEnum_([((ImActorModelApiPeer *) nil_chk(peer)) getType]), [peer getId]);
}


#line 140
AMAbsContent *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiMessage_(ImActorModelApiMessage *content) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 141
  if ([content isKindOfClass:[ImActorModelApiTextMessage class]]) {
    ImActorModelApiTextMessage *message = (ImActorModelApiTextMessage *) check_class_cast(content, [ImActorModelApiTextMessage class]);
    return new_AMTextContent_initWithNSString_([((ImActorModelApiTextMessage *) nil_chk(message)) getText]);
  }
  else
#line 144
  if ([content isKindOfClass:[ImActorModelApiServiceMessage class]]) {
    ImActorModelApiServiceMessage *message = (ImActorModelApiServiceMessage *) check_class_cast(content, [ImActorModelApiServiceMessage class]);
    ImActorModelApiServiceEx *ex = [((ImActorModelApiServiceMessage *) nil_chk(message)) getExt];
    if ([ex isKindOfClass:[ImActorModelApiServiceExChangedAvatar class]]) {
      ImActorModelApiServiceExChangedAvatar *avatar = (ImActorModelApiServiceExChangedAvatar *) check_class_cast(ex, [ImActorModelApiServiceExChangedAvatar class]);
      return new_AMServiceGroupAvatarChanged_initWithAMAvatar_(ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_([((ImActorModelApiServiceExChangedAvatar *) nil_chk(avatar)) getAvatar]));
    }
    else
#line 150
    if ([ex isKindOfClass:[ImActorModelApiServiceExChangedTitle class]]) {
      ImActorModelApiServiceExChangedTitle *title = (ImActorModelApiServiceExChangedTitle *) check_class_cast(ex, [ImActorModelApiServiceExChangedTitle class]);
      return new_AMServiceGroupTitleChanged_initWithNSString_([((ImActorModelApiServiceExChangedTitle *) nil_chk(title)) getTitle]);
    }
    else
#line 153
    if ([ex isKindOfClass:[ImActorModelApiServiceExUserAdded class]]) {
      ImActorModelApiServiceExUserAdded *userAdded = (ImActorModelApiServiceExUserAdded *) check_class_cast(ex, [ImActorModelApiServiceExUserAdded class]);
      return new_AMServiceGroupUserAdded_initWithInt_([((ImActorModelApiServiceExUserAdded *) nil_chk(userAdded)) getAddedUid]);
    }
    else
#line 156
    if ([ex isKindOfClass:[ImActorModelApiServiceExUserKicked class]]) {
      ImActorModelApiServiceExUserKicked *exUserKicked = (ImActorModelApiServiceExUserKicked *) check_class_cast(ex, [ImActorModelApiServiceExUserKicked class]);
      return new_AMServiceGroupUserKicked_initWithInt_([((ImActorModelApiServiceExUserKicked *) nil_chk(exUserKicked)) getKickedUid]);
    }
    else
#line 159
    if ([ex isKindOfClass:[ImActorModelApiServiceExUserLeft class]]) {
      return new_AMServiceGroupUserLeave_init();
    }
    else
#line 161
    if ([ex isKindOfClass:[ImActorModelApiServiceExGroupCreated class]]) {
      
#line 163
      return new_AMServiceGroupCreated_initWithNSString_(@"");
    }
    else {
      
#line 165
      return new_AMServiceContent_initWithNSString_([message getText]);
    }
  }
  else
#line 167
  if ([content isKindOfClass:[ImActorModelApiDocumentMessage class]]) {
    ImActorModelApiDocumentMessage *documentMessage = (ImActorModelApiDocumentMessage *) check_class_cast(content, [ImActorModelApiDocumentMessage class]);
    
#line 170
    NSString *mimeType = [((ImActorModelApiDocumentMessage *) nil_chk(documentMessage)) getMimeType];
    NSString *name = [documentMessage getName];
    AMFastThumb *fastThumb = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFastThumb_([documentMessage getThumb]);
    AMFileReference *fileReference = new_AMFileReference_initWithLong_withLong_withInt_withNSString_([documentMessage getFileId],
#line 174
    [documentMessage getAccessHash],
#line 175
    [documentMessage getFileSize],
#line 176
    [documentMessage getName]);
    AMFileRemoteSource *source = new_AMFileRemoteSource_initWithAMFileReference_(fileReference);
    
#line 179
    if ([[documentMessage getExt] isKindOfClass:[ImActorModelApiDocumentExPhoto class]]) {
      ImActorModelApiDocumentExPhoto *photo = (ImActorModelApiDocumentExPhoto *) check_class_cast([documentMessage getExt], [ImActorModelApiDocumentExPhoto class]);
      return new_AMPhotoContent_initWithAMFileSource_withNSString_withNSString_withAMFastThumb_withInt_withInt_(source, mimeType, name, fastThumb, [((ImActorModelApiDocumentExPhoto *) nil_chk(photo)) getW], [photo getH]);
    }
    else
#line 182
    if ([[documentMessage getExt] isKindOfClass:[ImActorModelApiDocumentExVideo class]]) {
      ImActorModelApiDocumentExVideo *video = (ImActorModelApiDocumentExVideo *) check_class_cast([documentMessage getExt], [ImActorModelApiDocumentExVideo class]);
      return new_AMVideoContent_initWithAMFileSource_withNSString_withNSString_withAMFastThumb_withInt_withInt_withInt_(source, mimeType, name, fastThumb,
#line 185
      [((ImActorModelApiDocumentExVideo *) nil_chk(video)) getDuration], [video getW], [video getH]);
    }
    else {
      
#line 187
      return new_AMDocumentContent_initWithAMFileSource_withNSString_withNSString_withAMFastThumb_(source, mimeType, name, fastThumb);
    }
  }
  return nil;
}


#line 193
AMFastThumb *ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiFastThumb_(ImActorModelApiFastThumb *fastThumb) {
  ImActorModelModulesMessagesEntityEntityConverter_initialize();
  
#line 194
  if (fastThumb == nil) {
    return nil;
  }
  return new_AMFastThumb_initWithInt_withInt_withByteArray_([((ImActorModelApiFastThumb *) nil_chk(fastThumb)) getW], [fastThumb getH], [fastThumb getThumb]);
}

void ImActorModelModulesMessagesEntityEntityConverter_init(ImActorModelModulesMessagesEntityEntityConverter *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesMessagesEntityEntityConverter *new_ImActorModelModulesMessagesEntityEntityConverter_init() {
  ImActorModelModulesMessagesEntityEntityConverter *self = [ImActorModelModulesMessagesEntityEntityConverter alloc];
  ImActorModelModulesMessagesEntityEntityConverter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesEntityEntityConverter)
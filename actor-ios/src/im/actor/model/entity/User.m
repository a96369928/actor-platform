//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/User.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/Sex.h"
#include "im/actor/model/entity/User.h"
#include "java/io/IOException.h"

@interface AMUser () {
 @public
  jint uid_;
  jlong accessHash_;
  NSString *name_;
  NSString *localName_;
  AMAvatar *avatar_;
  AMSexEnum *sex_;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(AMUser, name_, NSString *)
J2OBJC_FIELD_SETTER(AMUser, localName_, NSString *)
J2OBJC_FIELD_SETTER(AMUser, avatar_, AMAvatar *)
J2OBJC_FIELD_SETTER(AMUser, sex_, AMSexEnum *)

@implementation AMUser

+ (AMUser *)fromBytesWithByteArray:(IOSByteArray *)data {
  return AMUser_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name
               withNSString:(NSString *)localName
               withAMAvatar:(AMAvatar *)avatar
              withAMSexEnum:(AMSexEnum *)sex {
  if (self = [super init]) {
    self->uid_ = uid;
    self->accessHash_ = accessHash;
    self->name_ = name;
    self->localName_ = localName;
    self->avatar_ = avatar;
    self->sex_ = sex;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (AMPeer *)peer {
  return [[AMPeer alloc] initWithAMPeerTypeEnum:AMPeerTypeEnum_get_PRIVATE() withInt:uid_];
}

- (jint)getUid {
  return uid_;
}

- (jlong)getAccessHash {
  return accessHash_;
}

- (NSString *)getServerName {
  return name_;
}

- (NSString *)getLocalName {
  return localName_;
}

- (NSString *)getName {
  if (localName_ == nil) {
    return name_;
  }
  else {
    return localName_;
  }
}

- (AMAvatar *)getAvatar {
  return avatar_;
}

- (AMSexEnum *)getSex {
  return sex_;
}

- (AMUser *)editNameWithNSString:(NSString *)name {
  return [[AMUser alloc] initWithInt:uid_ withLong:accessHash_ withNSString:name withNSString:localName_ withAMAvatar:avatar_ withAMSexEnum:sex_];
}

- (AMUser *)editLocalNameWithNSString:(NSString *)localName {
  return [[AMUser alloc] initWithInt:uid_ withLong:accessHash_ withNSString:name_ withNSString:localName withAMAvatar:avatar_ withAMSexEnum:sex_];
}

- (AMUser *)editAvatarWithAMAvatar:(AMAvatar *)avatar {
  return [[AMUser alloc] initWithInt:uid_ withLong:accessHash_ withNSString:name_ withNSString:localName_ withAMAvatar:avatar withAMSexEnum:sex_];
}

- (jlong)getEngineId {
  return [self getUid];
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  accessHash_ = [values getLongWithInt:2];
  name_ = [values getStringWithInt:3];
  localName_ = [values optStringWithInt:4];
  IOSByteArray *a = [values optBytesWithInt:5];
  if (a != nil) {
    avatar_ = AMAvatar_fromBytesWithByteArray_(a);
  }
  sex_ = AMSexEnum_fromValueWithInt_([values getIntWithInt:6]);
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:uid_];
  [writer writeLongWithInt:2 withLong:accessHash_];
  [writer writeStringWithInt:3 withNSString:name_];
  if (localName_ != nil) {
    [writer writeStringWithInt:4 withNSString:localName_];
  }
  if (avatar_ != nil) {
    [writer writeObjectWithInt:5 withBSBserObject:avatar_];
  }
  [writer writeIntWithInt:6 withInt:[((AMSexEnum *) nil_chk(sex_)) getValue]];
}

- (void)copyAllFieldsTo:(AMUser *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->accessHash_ = accessHash_;
  other->name_ = name_;
  other->localName_ = localName_;
  other->avatar_ = avatar_;
  other->sex_ = sex_;
}

@end

AMUser *AMUser_fromBytesWithByteArray_(IOSByteArray *data) {
  AMUser_init();
  return ((AMUser *) BSBser_parseWithBSBserObject_withByteArray_([[AMUser alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMUser)

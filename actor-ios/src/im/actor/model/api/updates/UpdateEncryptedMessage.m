//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateEncryptedMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateEncryptedMessage.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateEncryptedMessage () {
 @public
  ImActorModelApiPeer *peer_;
  jint senderUid_;
  jlong date_;
  jlong keyHash_;
  IOSByteArray *aesEncryptedKey_;
  IOSByteArray *message_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateEncryptedMessage, peer_, ImActorModelApiPeer *)
J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateEncryptedMessage, aesEncryptedKey_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateEncryptedMessage, message_, IOSByteArray *)

@implementation ImActorModelApiUpdatesUpdateEncryptedMessage

+ (ImActorModelApiUpdatesUpdateEncryptedMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateEncryptedMessage_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                    withInt:(jint)senderUid
                                   withLong:(jlong)date
                                   withLong:(jlong)keyHash
                              withByteArray:(IOSByteArray *)aesEncryptedKey
                              withByteArray:(IOSByteArray *)message {
  if (self = [super init]) {
    self->peer_ = peer;
    self->senderUid_ = senderUid;
    self->date_ = date;
    self->keyHash_ = keyHash;
    self->aesEncryptedKey_ = aesEncryptedKey;
    self->message_ = message;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}

- (jint)getSenderUid {
  return self->senderUid_;
}

- (jlong)getDate {
  return self->date_;
}

- (jlong)getKeyHash {
  return self->keyHash_;
}

- (IOSByteArray *)getAesEncryptedKey {
  return self->aesEncryptedKey_;
}

- (IOSByteArray *)getMessage {
  return self->message_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiPeer alloc] init]];
  self->senderUid_ = [values getIntWithInt:2];
  self->date_ = [values getLongWithInt:6];
  self->keyHash_ = [values getLongWithInt:3];
  self->aesEncryptedKey_ = [values getBytesWithInt:4];
  self->message_ = [values getBytesWithInt:5];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeIntWithInt:2 withInt:self->senderUid_];
  [writer writeLongWithInt:6 withLong:self->date_];
  [writer writeLongWithInt:3 withLong:self->keyHash_];
  if (self->aesEncryptedKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:4 withByteArray:self->aesEncryptedKey_];
  if (self->message_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:5 withByteArray:self->message_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateEncryptedMessage_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateEncryptedMessage *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->senderUid_ = senderUid_;
  other->date_ = date_;
  other->keyHash_ = keyHash_;
  other->aesEncryptedKey_ = aesEncryptedKey_;
  other->message_ = message_;
}

@end

ImActorModelApiUpdatesUpdateEncryptedMessage *ImActorModelApiUpdatesUpdateEncryptedMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateEncryptedMessage_init();
  return ((ImActorModelApiUpdatesUpdateEncryptedMessage *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateEncryptedMessage alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateEncryptedMessage)

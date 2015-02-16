//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSendMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/MessageContent.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestSendMessage.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSendMessage () {
 @public
  ImActorModelApiOutPeer *peer_;
  jlong rid_;
  ImActorModelApiMessageContent *message_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSendMessage, peer_, ImActorModelApiOutPeer *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSendMessage, message_, ImActorModelApiMessageContent *)

@implementation ImActorModelApiRpcRequestSendMessage

+ (ImActorModelApiRpcRequestSendMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSendMessage_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                                      withLong:(jlong)rid
             withImActorModelApiMessageContent:(ImActorModelApiMessageContent *)message {
  if (self = [super init]) {
    self->peer_ = peer;
    self->rid_ = rid;
    self->message_ = message;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiOutPeer *)getPeer {
  return self->peer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (ImActorModelApiMessageContent *)getMessage {
  return self->message_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiOutPeer alloc] init]];
  self->rid_ = [values getLongWithInt:3];
  self->message_ = [values getObjWithInt:4 withBSBserObject:[[ImActorModelApiMessageContent alloc] init]];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeLongWithInt:3 withLong:self->rid_];
  if (self->message_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeObjectWithInt:4 withBSBserObject:self->message_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSendMessage_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestSendMessage *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->rid_ = rid_;
  other->message_ = message_;
}

@end

ImActorModelApiRpcRequestSendMessage *ImActorModelApiRpcRequestSendMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSendMessage_init();
  return ((ImActorModelApiRpcRequestSendMessage *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestSendMessage alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSendMessage)

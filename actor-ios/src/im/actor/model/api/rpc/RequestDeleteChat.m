//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestDeleteChat.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestDeleteChat.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestDeleteChat () {
 @public
  ImActorModelApiOutPeer *peer_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestDeleteChat, peer_, ImActorModelApiOutPeer *)

@implementation ImActorModelApiRpcRequestDeleteChat

+ (ImActorModelApiRpcRequestDeleteChat *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestDeleteChat_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer {
  if (self = [super init]) {
    ImActorModelApiRpcRequestDeleteChat_set_peer_(self, peer);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiOutPeer *)getPeer {
  return self->peer_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  ImActorModelApiRpcRequestDeleteChat_set_peer_(self, [((ComDroidkitBserBserValues *) nil_chk(values)) getObjWithInt:1 withIOSClass:ImActorModelApiOutPeer_class_()]);
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withComDroidkitBserBserObject:self->peer_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestDeleteChat_HEADER;
}

- (void)dealloc {
  RELEASE_(peer_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestDeleteChat *)other {
  [super copyAllFieldsTo:other];
  ImActorModelApiRpcRequestDeleteChat_set_peer_(other, peer_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestDeleteChat;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiOutPeer:", "RequestDeleteChat", NULL, 0x1, NULL },
    { "init", "RequestDeleteChat", NULL, 0x1, NULL },
    { "getPeer", NULL, "Lim.actor.model.api.OutPeer;", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestDeleteChat_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.model.api.OutPeer;", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseSeq;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestDeleteChat = { 1, "RequestDeleteChat", "im.actor.model.api.rpc", NULL, 0x1, 7, methods, 2, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestDeleteChat;
}

@end

ImActorModelApiRpcRequestDeleteChat *ImActorModelApiRpcRequestDeleteChat_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestDeleteChat_init();
  return ((ImActorModelApiRpcRequestDeleteChat *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiRpcRequestDeleteChat_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestDeleteChat)
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/MTProto.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Networking.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/network/Endpoints.h"
#include "im/actor/model/network/mtp/MTProto.h"
#include "im/actor/model/network/mtp/MTProtoCallback.h"
#include "im/actor/model/network/mtp/actors/ManagerActor.h"
#include "im/actor/model/network/mtp/actors/ReceiverActor.h"
#include "im/actor/model/network/mtp/actors/SenderActor.h"
#include "im/actor/model/network/mtp/entity/MTRpcRequest.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/util/MTUids.h"

@interface MTMTProto () {
 @public
  jlong authId_;
  jlong sessionId_;
  AMEndpoints *endpoints_;
  id<MTMTProtoCallback> callback_;
  id<AMNetworking> networking_;
  DKActorRef *receiver_;
  DKActorRef *manager_;
  DKActorRef *sender_;
  NSString *actorPath_;
}
@end

J2OBJC_FIELD_SETTER(MTMTProto, endpoints_, AMEndpoints *)
J2OBJC_FIELD_SETTER(MTMTProto, callback_, id<MTMTProtoCallback>)
J2OBJC_FIELD_SETTER(MTMTProto, networking_, id<AMNetworking>)
J2OBJC_FIELD_SETTER(MTMTProto, receiver_, DKActorRef *)
J2OBJC_FIELD_SETTER(MTMTProto, manager_, DKActorRef *)
J2OBJC_FIELD_SETTER(MTMTProto, sender_, DKActorRef *)
J2OBJC_FIELD_SETTER(MTMTProto, actorPath_, NSString *)

@implementation MTMTProto

- (instancetype)initWithLong:(jlong)authId
                    withLong:(jlong)sessionId
             withAMEndpoints:(AMEndpoints *)endpoints
       withMTMTProtoCallback:(id<MTMTProtoCallback>)callback
            withAMNetworking:(id<AMNetworking>)networking {
  if (self = [super init]) {
    actorPath_ = @"mtproto";
    self->authId_ = authId;
    self->sessionId_ = sessionId;
    self->endpoints_ = endpoints;
    self->callback_ = callback;
    self->networking_ = networking;
    self->manager_ = MTManagerActor_managerWithMTMTProto_(self);
    self->sender_ = MTSenderActor_senderActorWithMTMTProto_(self);
    self->receiver_ = MTReceiverActor_receiverWithMTMTProto_(self);
  }
  return self;
}

- (id<AMNetworking>)getNetworking {
  return networking_;
}

- (id<MTMTProtoCallback>)getCallback {
  return callback_;
}

- (AMEndpoints *)getEndpoints {
  return endpoints_;
}

- (jlong)getAuthId {
  return authId_;
}

- (jlong)getSessionId {
  return sessionId_;
}

- (NSString *)getActorPath {
  return actorPath_;
}

- (jlong)sendRpcMessageWithMTProtoStruct:(MTProtoStruct *)protoStruct {
  jlong mtId = ImActorModelNetworkUtilMTUids_nextId();
  [((DKActorRef *) nil_chk(sender_)) sendWithId:[[MTSenderActor_SendMessage alloc] initWithLong:mtId withByteArray:[((MTMTRpcRequest *) [[MTMTRpcRequest alloc] initWithByteArray:[((MTProtoStruct *) nil_chk(protoStruct)) toByteArray]]) toByteArray]]];
  return mtId;
}

- (void)cancelRpcWithLong:(jlong)mtId {
  [((DKActorRef *) nil_chk(sender_)) sendWithId:[[MTSenderActor_ForgetMessage alloc] initWithLong:mtId]];
}

- (void)copyAllFieldsTo:(MTMTProto *)other {
  [super copyAllFieldsTo:other];
  other->authId_ = authId_;
  other->sessionId_ = sessionId_;
  other->endpoints_ = endpoints_;
  other->callback_ = callback_;
  other->networking_ = networking_;
  other->receiver_ = receiver_;
  other->manager_ = manager_;
  other->sender_ = sender_;
  other->actorPath_ = actorPath_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTMTProto)

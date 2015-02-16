//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/Presence.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Presence.h"
#include "im/actor/model/modules/presence/OwnPresenceActor.h"
#include "im/actor/model/modules/presence/PresenceActor.h"

@interface ImActorModelModulesPresence () {
 @public
  DKActorRef *myPresence_;
  DKActorRef *presence_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresence, myPresence_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesPresence, presence_, DKActorRef *)

@interface ImActorModelModulesPresence_$1 () {
 @public
  ImActorModelModulesModules *val$modules_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresence_$1, val$modules_, ImActorModelModulesModules *)

@implementation ImActorModelModulesPresence

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self = [super initWithImActorModelModulesModules:modules]) {
    self->myPresence_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesPresenceOwnPresenceActor_class_(), [[ImActorModelModulesPresence_$1 alloc] initWithImActorModelModulesModules:modules]) withNSString:@"actor/presence/own"];
    presence_ = ImActorModelModulesPresencePresenceActor_getWithImActorModelModulesModules_(modules);
  }
  return self;
}

- (void)run {
  [((DKActorRef *) nil_chk(myPresence_)) sendWithId:[[ImActorModelModulesPresenceOwnPresenceActor_OnAppVisible alloc] init]];
}

- (void)onAppVisible {
  [((DKActorRef *) nil_chk(myPresence_)) sendWithId:[[ImActorModelModulesPresenceOwnPresenceActor_OnAppVisible alloc] init]];
}

- (void)onAppHidden {
  [((DKActorRef *) nil_chk(myPresence_)) sendWithId:[[ImActorModelModulesPresenceOwnPresenceActor_OnAppHidden alloc] init]];
}

- (void)onConversationOpenWithAMPeer:(AMPeer *)peer {
  [((DKActorRef *) nil_chk(presence_)) sendWithId:[[ImActorModelModulesPresencePresenceActor_Subscribe alloc] initWithAMPeer:peer]];
}

- (void)onConversationClosedWithAMPeer:(AMPeer *)peer {
}

- (void)onNewSessionCreated {
  [((DKActorRef *) nil_chk(presence_)) sendWithId:[[ImActorModelModulesPresencePresenceActor_SessionCreated alloc] init]];
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresence *)other {
  [super copyAllFieldsTo:other];
  other->myPresence_ = myPresence_;
  other->presence_ = presence_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresence)

@implementation ImActorModelModulesPresence_$1

- (ImActorModelModulesPresenceOwnPresenceActor *)create {
  return [[ImActorModelModulesPresenceOwnPresenceActor alloc] initWithImActorModelModulesModules:val$modules_];
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0 {
  val$modules_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresence_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$modules_ = val$modules_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresence_$1)

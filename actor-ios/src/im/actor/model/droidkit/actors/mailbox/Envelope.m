//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/actors/mailbox/Envelope.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorScope.h"
#include "im/actor/model/droidkit/actors/ActorTime.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"

@interface DKEnvelope () {
 @public
  id message_;
  DKActorRef *sender_;
  DKMailbox *mailbox_;
  DKActorScope *scope_;
  jlong sendTime_;
}
@end

J2OBJC_FIELD_SETTER(DKEnvelope, message_, id)
J2OBJC_FIELD_SETTER(DKEnvelope, sender_, DKActorRef *)
J2OBJC_FIELD_SETTER(DKEnvelope, mailbox_, DKMailbox *)
J2OBJC_FIELD_SETTER(DKEnvelope, scope_, DKActorScope *)

@implementation DKEnvelope

- (instancetype)initWithId:(id)message
          withDKActorScope:(DKActorScope *)scope
             withDKMailbox:(DKMailbox *)mailbox
            withDKActorRef:(DKActorRef *)sender {
  if (self = [super init]) {
    self->scope_ = scope;
    self->message_ = message;
    self->sender_ = sender;
    self->mailbox_ = mailbox;
    self->sendTime_ = DKActorTime_currentTime();
  }
  return self;
}

- (DKActorScope *)getScope {
  return scope_;
}

- (id)getMessage {
  return message_;
}

- (DKMailbox *)getMailbox {
  return mailbox_;
}

- (DKActorRef *)getSender {
  return sender_;
}

- (jlong)getSendTime {
  return sendTime_;
}

- (NSString *)description {
  return JreStrcat("C@$$C", '{', message_, @" -> ", [((DKActorScope *) nil_chk(scope_)) getPath], '}');
}

- (void)copyAllFieldsTo:(DKEnvelope *)other {
  [super copyAllFieldsTo:other];
  other->message_ = message_;
  other->sender_ = sender_;
  other->mailbox_ = mailbox_;
  other->scope_ = scope_;
  other->sendTime_ = sendTime_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKEnvelope)

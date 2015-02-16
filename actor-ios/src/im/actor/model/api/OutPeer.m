//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/OutPeer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/PeerType.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiOutPeer () {
 @public
  ImActorModelApiPeerTypeEnum *type_;
  jint id__;
  jlong accessHash_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiOutPeer, type_, ImActorModelApiPeerTypeEnum *)

@implementation ImActorModelApiOutPeer

- (instancetype)initWithImActorModelApiPeerTypeEnum:(ImActorModelApiPeerTypeEnum *)type
                                            withInt:(jint)id_
                                           withLong:(jlong)accessHash {
  if (self = [super init]) {
    self->type_ = type;
    self->id__ = id_;
    self->accessHash_ = accessHash;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeerTypeEnum *)getType {
  return self->type_;
}

- (jint)getId {
  return self->id__;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->type_ = ImActorModelApiPeerTypeEnum_parseWithInt_([((BSBserValues *) nil_chk(values)) getIntWithInt:1]);
  self->id__ = [values getIntWithInt:2];
  self->accessHash_ = [values getLongWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->type_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:[((ImActorModelApiPeerTypeEnum *) nil_chk(self->type_)) getValue]];
  [writer writeIntWithInt:2 withInt:self->id__];
  [writer writeLongWithInt:3 withLong:self->accessHash_];
}

- (void)copyAllFieldsTo:(ImActorModelApiOutPeer *)other {
  [super copyAllFieldsTo:other];
  other->type_ = type_;
  other->id__ = id__;
  other->accessHash_ = accessHash_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiOutPeer)

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/api/rpc/ResponseSeq.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseSeq.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"

@interface APResponseSeq () {
 @public
  jint seq_;
  IOSByteArray *state_;
}

@end

J2OBJC_FIELD_SETTER(APResponseSeq, state_, IOSByteArray *)

@implementation APResponseSeq

+ (APResponseSeq *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APResponseSeq_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state {
  APResponseSeq_initWithInt_withByteArray_(self, seq, state);
  return self;
}

- (instancetype)init {
  APResponseSeq_init(self);
  return self;
}

- (jint)getSeq {
  return self->seq_;
}

- (IOSByteArray *)getState {
  return self->state_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->seq_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->state_ = [values getBytesWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
}

- (NSString *)description {
  NSString *res = @"response Seq{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"seq=", self->seq_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", state=", BSUtils_byteArrayToStringWithByteArray_(self->state_)));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APResponseSeq_HEADER;
}

@end

APResponseSeq *APResponseSeq_fromBytesWithByteArray_(IOSByteArray *data) {
  APResponseSeq_initialize();
  return ((APResponseSeq *) BSBser_parseWithBSBserObject_withByteArray_(new_APResponseSeq_init(), data));
}

void APResponseSeq_initWithInt_withByteArray_(APResponseSeq *self, jint seq, IOSByteArray *state) {
  (void) APResponse_init(self);
  self->seq_ = seq;
  self->state_ = state;
}

APResponseSeq *new_APResponseSeq_initWithInt_withByteArray_(jint seq, IOSByteArray *state) {
  APResponseSeq *self = [APResponseSeq alloc];
  APResponseSeq_initWithInt_withByteArray_(self, seq, state);
  return self;
}

void APResponseSeq_init(APResponseSeq *self) {
  (void) APResponse_init(self);
}

APResponseSeq *new_APResponseSeq_init() {
  APResponseSeq *self = [APResponseSeq alloc];
  APResponseSeq_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APResponseSeq)
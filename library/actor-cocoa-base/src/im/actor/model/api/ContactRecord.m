//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ContactRecord.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ContactRecord.h"
#include "im/actor/model/api/ContactType.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"

@interface ImActorModelApiContactRecord () {
 @public
  ImActorModelApiContactTypeEnum *type_;
  NSString *stringValue_;
  JavaLangLong *longValue_;
  NSString *title_;
  NSString *subtitle_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiContactRecord, type_, ImActorModelApiContactTypeEnum *)
J2OBJC_FIELD_SETTER(ImActorModelApiContactRecord, stringValue_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiContactRecord, longValue_, JavaLangLong *)
J2OBJC_FIELD_SETTER(ImActorModelApiContactRecord, title_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiContactRecord, subtitle_, NSString *)

@implementation ImActorModelApiContactRecord

- (instancetype)initWithImActorModelApiContactTypeEnum:(ImActorModelApiContactTypeEnum *)type
                                          withNSString:(NSString *)stringValue
                                      withJavaLangLong:(JavaLangLong *)longValue
                                          withNSString:(NSString *)title
                                          withNSString:(NSString *)subtitle {
  ImActorModelApiContactRecord_initWithImActorModelApiContactTypeEnum_withNSString_withJavaLangLong_withNSString_withNSString_(self, type, stringValue, longValue, title, subtitle);
  return self;
}

- (instancetype)init {
  ImActorModelApiContactRecord_init(self);
  return self;
}

- (ImActorModelApiContactTypeEnum *)getType {
  return self->type_;
}

- (NSString *)getStringValue {
  return self->stringValue_;
}

- (JavaLangLong *)getLongValue {
  return self->longValue_;
}

- (NSString *)getTitle {
  return self->title_;
}

- (NSString *)getSubtitle {
  return self->subtitle_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->type_ = ImActorModelApiContactTypeEnum_parseWithInt_([((BSBserValues *) nil_chk(values)) getIntWithInt:1]);
  self->stringValue_ = [values optStringWithInt:2];
  self->longValue_ = JavaLangLong_valueOfWithLong_([values optLongWithInt:3]);
  self->title_ = [values optStringWithInt:4];
  self->subtitle_ = [values optStringWithInt:5];
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[values buildRemaining]];
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->type_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:[((ImActorModelApiContactTypeEnum *) nil_chk(self->type_)) getValue]];
  if (self->stringValue_ != nil) {
    [writer writeStringWithInt:2 withNSString:self->stringValue_];
  }
  if (self->longValue_ != nil) {
    [writer writeLongWithInt:3 withLong:[self->longValue_ longLongValue]];
  }
  if (self->title_ != nil) {
    [writer writeStringWithInt:4 withNSString:self->title_];
  }
  if (self->subtitle_ != nil) {
    [writer writeStringWithInt:5 withNSString:self->subtitle_];
  }
  if ([self getUnmappedObjects] != nil) {
    ImActorModelDroidkitBserUtilSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}

- (NSString *)description {
  NSString *res = @"struct ContactRecord{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"type=", self->type_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", stringValue=", self->stringValue_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", longValue=", self->longValue_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", title=", self->title_));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end

void ImActorModelApiContactRecord_initWithImActorModelApiContactTypeEnum_withNSString_withJavaLangLong_withNSString_withNSString_(ImActorModelApiContactRecord *self, ImActorModelApiContactTypeEnum *type, NSString *stringValue, JavaLangLong *longValue, NSString *title, NSString *subtitle) {
  (void) BSBserObject_init(self);
  self->type_ = type;
  self->stringValue_ = stringValue;
  self->longValue_ = longValue;
  self->title_ = title;
  self->subtitle_ = subtitle;
}

ImActorModelApiContactRecord *new_ImActorModelApiContactRecord_initWithImActorModelApiContactTypeEnum_withNSString_withJavaLangLong_withNSString_withNSString_(ImActorModelApiContactTypeEnum *type, NSString *stringValue, JavaLangLong *longValue, NSString *title, NSString *subtitle) {
  ImActorModelApiContactRecord *self = [ImActorModelApiContactRecord alloc];
  ImActorModelApiContactRecord_initWithImActorModelApiContactTypeEnum_withNSString_withJavaLangLong_withNSString_withNSString_(self, type, stringValue, longValue, title, subtitle);
  return self;
}

void ImActorModelApiContactRecord_init(ImActorModelApiContactRecord *self) {
  (void) BSBserObject_init(self);
}

ImActorModelApiContactRecord *new_ImActorModelApiContactRecord_init() {
  ImActorModelApiContactRecord *self = [ImActorModelApiContactRecord alloc];
  ImActorModelApiContactRecord_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiContactRecord)

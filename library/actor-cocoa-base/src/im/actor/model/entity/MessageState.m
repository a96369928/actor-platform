//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/MessageState.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/MessageState.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/entity/MessageState.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void AMMessageStateEnum_initWithInt_withNSString_withInt_(AMMessageStateEnum *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static AMMessageStateEnum *new_AMMessageStateEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(AMMessageStateEnum)

AMMessageStateEnum *AMMessageStateEnum_values_[6];


#line 6
@implementation AMMessageStateEnum


#line 16
- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  AMMessageStateEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 20
- (jint)getValue {
  return value_;
}

+ (AMMessageStateEnum *)fromValueWithInt:(jint)value {
  return AMMessageStateEnum_fromValueWithInt_(value);
}

IOSObjectArray *AMMessageStateEnum_values() {
  AMMessageStateEnum_initialize();
  return [IOSObjectArray arrayWithObjects:AMMessageStateEnum_values_ count:6 type:AMMessageStateEnum_class_()];
}

+ (IOSObjectArray *)values {
  return AMMessageStateEnum_values();
}

+ (AMMessageStateEnum *)valueOfWithNSString:(NSString *)name {
  return AMMessageStateEnum_valueOfWithNSString_(name);
}

AMMessageStateEnum *AMMessageStateEnum_valueOfWithNSString_(NSString *name) {
  AMMessageStateEnum_initialize();
  for (int i = 0; i < 6; i++) {
    AMMessageStateEnum *e = AMMessageStateEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMMessageStateEnum class]) {
    AMMessageStateEnum_PENDING = new_AMMessageStateEnum_initWithInt_withNSString_withInt_(
#line 7
    1, @"PENDING", 0);
    AMMessageStateEnum_SENT = new_AMMessageStateEnum_initWithInt_withNSString_withInt_(
#line 8
    2, @"SENT", 1);
    AMMessageStateEnum_RECEIVED = new_AMMessageStateEnum_initWithInt_withNSString_withInt_(
#line 9
    3, @"RECEIVED", 2);
    AMMessageStateEnum_READ = new_AMMessageStateEnum_initWithInt_withNSString_withInt_(
#line 10
    4, @"READ", 3);
    AMMessageStateEnum_ERROR = new_AMMessageStateEnum_initWithInt_withNSString_withInt_(
#line 11
    5, @"ERROR", 4);
    AMMessageStateEnum_UNKNOWN = new_AMMessageStateEnum_initWithInt_withNSString_withInt_(
#line 12
    6, @"UNKNOWN", 5);
    J2OBJC_SET_INITIALIZED(AMMessageStateEnum)
  }
}

@end


#line 16
void AMMessageStateEnum_initWithInt_withNSString_withInt_(AMMessageStateEnum *self, jint value, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  
#line 17
  self->value_ = value;
}


#line 16
AMMessageStateEnum *new_AMMessageStateEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  AMMessageStateEnum *self = [AMMessageStateEnum alloc];
  AMMessageStateEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}


#line 24
AMMessageStateEnum *AMMessageStateEnum_fromValueWithInt_(jint value) {
  AMMessageStateEnum_initialize();
  
#line 25
  switch (value) {
    case 1:
    return AMMessageStateEnum_PENDING;
    case 2:
    return AMMessageStateEnum_SENT;
    case 3:
    return AMMessageStateEnum_RECEIVED;
    case 4:
    return AMMessageStateEnum_READ;
    case 5:
    return AMMessageStateEnum_ERROR;
    default:
    case 6:
    return AMMessageStateEnum_UNKNOWN;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMMessageStateEnum)
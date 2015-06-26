//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/util/BigIntegers.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/bouncycastle/RandomProvider.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/util/BigIntegers.h"

#define OrgBouncycastleUtilBigIntegers_MAX_ITERATIONS 1000

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleUtilBigIntegers, MAX_ITERATIONS, jint)

static JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_ZERO_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleUtilBigIntegers, ZERO_, JavaMathBigInteger *)

J2OBJC_INITIALIZED_DEFN(OrgBouncycastleUtilBigIntegers)

@implementation OrgBouncycastleUtilBigIntegers

+ (IOSByteArray *)asUnsignedByteArrayWithJavaMathBigInteger:(JavaMathBigInteger *)value {
  return OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithJavaMathBigInteger_(value);
}

+ (IOSByteArray *)asUnsignedByteArrayWithInt:(jint)length
                      withJavaMathBigInteger:(JavaMathBigInteger *)value {
  return OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithInt_withJavaMathBigInteger_(length, value);
}

+ (JavaMathBigInteger *)createRandomInRangeWithJavaMathBigInteger:(JavaMathBigInteger *)min
                                           withJavaMathBigInteger:(JavaMathBigInteger *)max
                                             withBCRandomProvider:(id<BCRandomProvider>)random {
  return OrgBouncycastleUtilBigIntegers_createRandomInRangeWithJavaMathBigInteger_withJavaMathBigInteger_withBCRandomProvider_(min, max, random);
}

+ (JavaMathBigInteger *)fromUnsignedByteArrayWithByteArray:(IOSByteArray *)buf {
  return OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_(buf);
}

+ (JavaMathBigInteger *)fromUnsignedByteArrayWithByteArray:(IOSByteArray *)buf
                                                   withInt:(jint)off
                                                   withInt:(jint)length {
  return OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_withInt_withInt_(buf, off, length);
}

- (instancetype)init {
  OrgBouncycastleUtilBigIntegers_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgBouncycastleUtilBigIntegers class]) {
    OrgBouncycastleUtilBigIntegers_ZERO_ = JavaMathBigInteger_valueOfWithLong_(0);
    J2OBJC_SET_INITIALIZED(OrgBouncycastleUtilBigIntegers)
  }
}

@end

IOSByteArray *OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithJavaMathBigInteger_(JavaMathBigInteger *value) {
  OrgBouncycastleUtilBigIntegers_initialize();
  IOSByteArray *bytes = [((JavaMathBigInteger *) nil_chk(value)) toByteArray];
  if (IOSByteArray_Get(nil_chk(bytes), 0) == 0) {
    IOSByteArray *tmp = [IOSByteArray newArrayWithLength:bytes->size_ - 1];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes, 1, tmp, 0, tmp->size_);
    return tmp;
  }
  return bytes;
}

IOSByteArray *OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithInt_withJavaMathBigInteger_(jint length, JavaMathBigInteger *value) {
  OrgBouncycastleUtilBigIntegers_initialize();
  IOSByteArray *bytes = [((JavaMathBigInteger *) nil_chk(value)) toByteArray];
  if (((IOSByteArray *) nil_chk(bytes))->size_ == length) {
    return bytes;
  }
  jint start = IOSByteArray_Get(bytes, 0) == 0 ? 1 : 0;
  jint count = bytes->size_ - start;
  if (count > length) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"standard length exceeded for value");
  }
  IOSByteArray *tmp = [IOSByteArray newArrayWithLength:length];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes, start, tmp, tmp->size_ - count, count);
  return tmp;
}

JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_createRandomInRangeWithJavaMathBigInteger_withJavaMathBigInteger_withBCRandomProvider_(JavaMathBigInteger *min, JavaMathBigInteger *max, id<BCRandomProvider> random) {
  OrgBouncycastleUtilBigIntegers_initialize();
  jint cmp = [((JavaMathBigInteger *) nil_chk(min)) compareToWithId:max];
  if (cmp >= 0) {
    if (cmp > 0) {
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"'min' may not be greater than 'max'");
    }
    return min;
  }
  if ([min bitLength] > [((JavaMathBigInteger *) nil_chk(max)) bitLength] / 2) {
    return [((JavaMathBigInteger *) nil_chk(OrgBouncycastleUtilBigIntegers_createRandomInRangeWithJavaMathBigInteger_withJavaMathBigInteger_withBCRandomProvider_(OrgBouncycastleUtilBigIntegers_ZERO_, [max subtractWithJavaMathBigInteger:min], random))) addWithJavaMathBigInteger:min];
  }
  for (jint i = 0; i < OrgBouncycastleUtilBigIntegers_MAX_ITERATIONS; ++i) {
    JavaMathBigInteger *x = [((id<BCRandomProvider>) nil_chk(random)) generateBigIntegerWithInt:[max bitLength]];
    if ([((JavaMathBigInteger *) nil_chk(x)) compareToWithId:min] >= 0 && [x compareToWithId:max] <= 0) {
      return x;
    }
  }
  return [((JavaMathBigInteger *) nil_chk([((id<BCRandomProvider>) nil_chk(random)) generateBigIntegerWithInt:[((JavaMathBigInteger *) nil_chk([max subtractWithJavaMathBigInteger:min])) bitLength] - 1])) addWithJavaMathBigInteger:min];
}

JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_(IOSByteArray *buf) {
  OrgBouncycastleUtilBigIntegers_initialize();
  return new_JavaMathBigInteger_initWithInt_withByteArray_(1, buf);
}

JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_withInt_withInt_(IOSByteArray *buf, jint off, jint length) {
  OrgBouncycastleUtilBigIntegers_initialize();
  IOSByteArray *mag = buf;
  if (off != 0 || length != ((IOSByteArray *) nil_chk(buf))->size_) {
    mag = [IOSByteArray newArrayWithLength:length];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf, off, mag, 0, length);
  }
  return new_JavaMathBigInteger_initWithInt_withByteArray_(1, mag);
}

void OrgBouncycastleUtilBigIntegers_init(OrgBouncycastleUtilBigIntegers *self) {
  (void) NSObject_init(self);
}

OrgBouncycastleUtilBigIntegers *new_OrgBouncycastleUtilBigIntegers_init() {
  OrgBouncycastleUtilBigIntegers *self = [OrgBouncycastleUtilBigIntegers alloc];
  OrgBouncycastleUtilBigIntegers_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleUtilBigIntegers)
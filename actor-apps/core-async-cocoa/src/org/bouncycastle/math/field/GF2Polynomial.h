//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core-crypto/src/main/java/org/bouncycastle/math/field/GF2Polynomial.java
//

#ifndef _OrgBouncycastleMathFieldGF2Polynomial_H_
#define _OrgBouncycastleMathFieldGF2Polynomial_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/math/field/Polynomial.h"

@class IOSIntArray;

@interface OrgBouncycastleMathFieldGF2Polynomial : NSObject < OrgBouncycastleMathFieldPolynomial > {
 @public
  IOSIntArray *exponents_;
}

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (jint)getDegree;

- (IOSIntArray *)getExponentsPresent;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype)initWithIntArray:(IOSIntArray *)exponents;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathFieldGF2Polynomial)

J2OBJC_FIELD_SETTER(OrgBouncycastleMathFieldGF2Polynomial, exponents_, IOSIntArray *)

FOUNDATION_EXPORT void OrgBouncycastleMathFieldGF2Polynomial_initWithIntArray_(OrgBouncycastleMathFieldGF2Polynomial *self, IOSIntArray *exponents);

FOUNDATION_EXPORT OrgBouncycastleMathFieldGF2Polynomial *new_OrgBouncycastleMathFieldGF2Polynomial_initWithIntArray_(IOSIntArray *exponents) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathFieldGF2Polynomial)

#endif // _OrgBouncycastleMathFieldGF2Polynomial_H_
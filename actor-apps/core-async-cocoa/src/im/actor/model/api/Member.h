//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/api/Member.java
//

#ifndef _APMember_H_
#define _APMember_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;

@interface APMember : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date;

- (jlong)getDate;

- (jint)getInviterUid;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APMember)

FOUNDATION_EXPORT void APMember_initWithInt_withInt_withLong_(APMember *self, jint uid, jint inviterUid, jlong date);

FOUNDATION_EXPORT APMember *new_APMember_initWithInt_withInt_withLong_(jint uid, jint inviterUid, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APMember_init(APMember *self);

FOUNDATION_EXPORT APMember *new_APMember_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APMember)

typedef APMember ImActorModelApiMember;

#endif // _APMember_H_
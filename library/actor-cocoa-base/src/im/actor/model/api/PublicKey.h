//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/PublicKey.java
//

#ifndef _ImActorModelApiPublicKey_H_
#define _ImActorModelApiPublicKey_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiPublicKey : BSBserObject {
}

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)keyHash
              withByteArray:(IOSByteArray *)key;

- (instancetype)init;

- (jint)getUid;

- (jlong)getKeyHash;

- (IOSByteArray *)getKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiPublicKey)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiPublicKey)

#endif // _ImActorModelApiPublicKey_H_
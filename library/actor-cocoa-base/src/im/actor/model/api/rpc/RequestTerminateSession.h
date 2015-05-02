//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestTerminateSession.java
//

#ifndef _ImActorModelApiRpcRequestTerminateSession_H_
#define _ImActorModelApiRpcRequestTerminateSession_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define ImActorModelApiRpcRequestTerminateSession_HEADER 82

@interface ImActorModelApiRpcRequestTerminateSession : ImActorModelNetworkParserRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)id_;

+ (ImActorModelApiRpcRequestTerminateSession *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getId;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestTerminateSession)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestTerminateSession, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcRequestTerminateSession *ImActorModelApiRpcRequestTerminateSession_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcRequestTerminateSession_initWithInt_(ImActorModelApiRpcRequestTerminateSession *self, jint id_);

FOUNDATION_EXPORT ImActorModelApiRpcRequestTerminateSession *new_ImActorModelApiRpcRequestTerminateSession_initWithInt_(jint id_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcRequestTerminateSession_init(ImActorModelApiRpcRequestTerminateSession *self);

FOUNDATION_EXPORT ImActorModelApiRpcRequestTerminateSession *new_ImActorModelApiRpcRequestTerminateSession_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestTerminateSession)

#endif // _ImActorModelApiRpcRequestTerminateSession_H_
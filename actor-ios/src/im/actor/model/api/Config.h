//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/Config.java
//

#ifndef _ImActorModelApiConfig_H_
#define _ImActorModelApiConfig_H_

@class ComDroidkitBserBserValues;
@class ComDroidkitBserBserWriter;

#include "J2ObjC_header.h"
#include "com/droidkit/bser/BserObject.h"

@interface ImActorModelApiConfig : ComDroidkitBserBserObject {
}

- (instancetype)initWithInt:(jint)maxGroupSize;

- (instancetype)init;

- (jint)getMaxGroupSize;

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values;

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiConfig)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiConfig)

#endif // _ImActorModelApiConfig_H_
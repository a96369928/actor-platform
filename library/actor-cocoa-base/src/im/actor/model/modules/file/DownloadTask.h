//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/file/DownloadTask.java
//

#ifndef _ImActorModelModulesFileDownloadTask_H_
#define _ImActorModelModulesFileDownloadTask_H_

@class AMFileReference;
@class AMRpcException;
@class DKActorRef;
@class IOSByteArray;
@class ImActorModelApiRpcResponseGetFileUrl;
@class ImActorModelModulesModules;
@protocol AMFileSystemProvider;
@protocol AMFileSystemReference;
@protocol AMHttpDownloaderProvider;
@protocol AMOutputFile;

#include "J2ObjC_header.h"
#include "im/actor/model/http/FileDownloadCallback.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/network/RpcCallback.h"
#include "java/lang/Runnable.h"

#define ImActorModelModulesFileDownloadTask_SIM_BLOCKS_COUNT 4

@interface ImActorModelModulesFileDownloadTask : ImActorModelModulesUtilsModuleActor {
}

- (instancetype)initWithAMFileReference:(AMFileReference *)fileReference
                         withDKActorRef:(DKActorRef *)manager
         withImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileDownloadTask)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesFileDownloadTask, SIM_BLOCKS_COUNT, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileDownloadTask)

@interface ImActorModelModulesFileDownloadTask_$1 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseGetFileUrl *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesFileDownloadTask:(ImActorModelModulesFileDownloadTask *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileDownloadTask_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileDownloadTask_$1)

@interface ImActorModelModulesFileDownloadTask_$2 : NSObject < ImActorModelHttpFileDownloadCallback > {
}

- (void)onDownloadedWithByteArray:(IOSByteArray *)data;

- (void)onDownloadFailure;

- (instancetype)initWithImActorModelModulesFileDownloadTask:(ImActorModelModulesFileDownloadTask *)outer$
                                                    withInt:(jint)capture$0
                                                    withInt:(jint)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileDownloadTask_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileDownloadTask_$2)

@interface ImActorModelModulesFileDownloadTask_$2_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesFileDownloadTask_$2:(ImActorModelModulesFileDownloadTask_$2 *)outer$
                                                 withByteArray:(IOSByteArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileDownloadTask_$2_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileDownloadTask_$2_$1)

@interface ImActorModelModulesFileDownloadTask_$2_$2 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesFileDownloadTask_$2:(ImActorModelModulesFileDownloadTask_$2 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileDownloadTask_$2_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileDownloadTask_$2_$2)

#endif // _ImActorModelModulesFileDownloadTask_H_
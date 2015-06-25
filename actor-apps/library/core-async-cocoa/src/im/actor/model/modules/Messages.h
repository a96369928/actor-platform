//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/modules/Messages.java
//

#ifndef _ImActorModelModulesMessages_H_
#define _ImActorModelModulesMessages_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@class AMFastThumb;
@class AMPeer;
@class DKActorRef;
@class DKSyncKeyValue;
@class IOSLongArray;
@class ImActorModelModulesModules;
@class JavaUtilArrayList;
@protocol AMCommand;
@protocol DKListEngine;

@interface ImActorModelModulesMessages : ImActorModelModulesBaseModule

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (id<AMCommand>)clearChatWithAMPeer:(AMPeer *)peer;

- (id<AMCommand>)deleteChatWithAMPeer:(AMPeer *)peer;

- (void)deleteMessagesWithAMPeer:(AMPeer *)peer
                   withLongArray:(IOSLongArray *)rids;

- (DKActorRef *)getConversationActorWithAMPeer:(AMPeer *)peer;

- (id<DKListEngine>)getConversationEngineWithAMPeer:(AMPeer *)peer;

- (DKActorRef *)getConversationHistoryActorWithAMPeer:(AMPeer *)peer;

- (DKSyncKeyValue *)getConversationPending;

- (DKSyncKeyValue *)getCursorStorage;

- (DKActorRef *)getDialogsActor;

- (id<DKListEngine>)getDialogsEngine;

- (DKActorRef *)getDialogsHistoryActor;

- (id<DKListEngine>)getMediaEngineWithAMPeer:(AMPeer *)peer;

- (DKActorRef *)getOwnReadActor;

- (DKActorRef *)getPlainReadActor;

- (DKActorRef *)getPlainReceiverActor;

- (DKActorRef *)getSendMessageActor;

- (NSString *)loadDraftWithAMPeer:(AMPeer *)peer;

- (void)loadMoreDialogs;

- (void)loadMoreHistoryWithAMPeer:(AMPeer *)peer;

- (jlong)loadReadStateWithAMPeer:(AMPeer *)peer;

- (void)onConversationOpenWithAMPeer:(AMPeer *)peer;

- (void)onInMessageShownWithAMPeer:(AMPeer *)peer
                          withLong:(jlong)sortDate;

- (void)resetModule;

- (void)run;

- (void)saveDraftWithAMPeer:(AMPeer *)peer
               withNSString:(NSString *)draft;

- (void)saveReadStateWithAMPeer:(AMPeer *)peer
                       withLong:(jlong)lastReadDate;

- (void)sendDocumentWithAMPeer:(AMPeer *)peer
                  withNSString:(NSString *)fileName
                  withNSString:(NSString *)mimeType
               withAMFastThumb:(AMFastThumb *)fastThumb
                  withNSString:(NSString *)descriptor;

- (void)sendMessageWithAMPeer:(AMPeer *)peer
                 withNSString:(NSString *)message
                 withNSString:(NSString *)markDownText
        withJavaUtilArrayList:(JavaUtilArrayList *)mentions;

- (void)sendPhotoWithAMPeer:(AMPeer *)peer
               withNSString:(NSString *)fileName
                    withInt:(jint)w
                    withInt:(jint)h
            withAMFastThumb:(AMFastThumb *)fastThumb
               withNSString:(NSString *)descriptor;

- (void)sendVideoWithAMPeer:(AMPeer *)peer
               withNSString:(NSString *)fileName
                    withInt:(jint)w
                    withInt:(jint)h
                    withInt:(jint)duration
            withAMFastThumb:(AMFastThumb *)fastThumb
               withNSString:(NSString *)descriptor;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessages)

FOUNDATION_EXPORT void ImActorModelModulesMessages_initWithImActorModelModulesModules_(ImActorModelModulesMessages *self, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesMessages *new_ImActorModelModulesMessages_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessages)

#endif // _ImActorModelModulesMessages_H_
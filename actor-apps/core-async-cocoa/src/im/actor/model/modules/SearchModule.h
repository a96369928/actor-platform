//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/SearchModule.java
//

#ifndef _ImActorModelModulesSearchModule_H_
#define _ImActorModelModulesSearchModule_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@class IOSObjectArray;
@class ImActorModelModulesModules;
@protocol DKListEngine;
@protocol JavaUtilList;

@interface ImActorModelModulesSearchModule : ImActorModelModulesBaseModule

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (id<DKListEngine>)getSearchList;

- (void)onContactsChangedWithJavaLangIntegerArray:(IOSObjectArray *)contacts;

- (void)onDialogsChangedWithJavaUtilList:(id<JavaUtilList>)dialogs;

- (void)resetModule;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSearchModule)

FOUNDATION_EXPORT void ImActorModelModulesSearchModule_initWithImActorModelModulesModules_(ImActorModelModulesSearchModule *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesSearchModule *new_ImActorModelModulesSearchModule_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSearchModule)

#endif // _ImActorModelModulesSearchModule_H_

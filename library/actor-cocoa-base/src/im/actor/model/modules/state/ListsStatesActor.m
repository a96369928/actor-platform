//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/state/ListsStatesActor.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/state/ListsStatesActor.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/modules/AppStateModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/state/ListsStatesActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/viewmodel/AppStateVM.h"

@interface ImActorModelModulesStateListsStatesActor_OnContactsChanged () {
 @public
  jboolean isEmpty__;
}

@end

@interface ImActorModelModulesStateListsStatesActor_OnDialogsChanged () {
 @public
  jboolean isEmpty__;
}

@end


#line 9
@implementation ImActorModelModulesStateListsStatesActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesStateListsStatesActor_initWithImActorModelModulesModules_(self, modules);
  return self;
}


#line 15
- (void)onDialogsChangedWithBoolean:(jboolean)isEmpty {
  [((AMAppStateVM *) nil_chk([((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAppStateModule])) getAppStateVM])) onDialogsChangedWithBoolean:isEmpty];
}

- (void)onContactsChangedWithBoolean:(jboolean)isEmpty {
  [((AMAppStateVM *) nil_chk([((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAppStateModule])) getAppStateVM])) onContactsChangedWithBoolean:isEmpty];
}

- (void)onBookImported {
  [((AMAppStateVM *) nil_chk([((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAppStateModule])) getAppStateVM])) onPhoneImported];
}

- (void)onContactsLoaded {
  [((AMAppStateVM *) nil_chk([((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAppStateModule])) getAppStateVM])) onContactsLoaded];
}

- (void)onDialogsLoaded {
  [((AMAppStateVM *) nil_chk([((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getAppStateModule])) getAppStateVM])) onDialogsLoaded];
}


#line 36
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesStateListsStatesActor_OnContactsChanged class]]) {
    [self onContactsChangedWithBoolean:[((ImActorModelModulesStateListsStatesActor_OnContactsChanged *) nil_chk(((ImActorModelModulesStateListsStatesActor_OnContactsChanged *) check_class_cast(message, [ImActorModelModulesStateListsStatesActor_OnContactsChanged class])))) isEmpty]];
  }
  else
#line 39
  if ([message isKindOfClass:[ImActorModelModulesStateListsStatesActor_OnDialogsChanged class]]) {
    [self onDialogsChangedWithBoolean:[((ImActorModelModulesStateListsStatesActor_OnDialogsChanged *) nil_chk(((ImActorModelModulesStateListsStatesActor_OnDialogsChanged *) check_class_cast(message, [ImActorModelModulesStateListsStatesActor_OnDialogsChanged class])))) isEmpty]];
  }
  else
#line 41
  if ([message isKindOfClass:[ImActorModelModulesStateListsStatesActor_OnBookImported class]]) {
    [self onBookImported];
  }
  else
#line 43
  if ([message isKindOfClass:[ImActorModelModulesStateListsStatesActor_OnContactsLoaded class]]) {
    [self onContactsLoaded];
  }
  else
#line 45
  if ([message isKindOfClass:[ImActorModelModulesStateListsStatesActor_OnDialogsLoaded class]]) {
    [self onDialogsLoaded];
  }
  else {
    
#line 48
    [self dropWithId:message];
  }
}

@end


#line 11
void ImActorModelModulesStateListsStatesActor_initWithImActorModelModulesModules_(ImActorModelModulesStateListsStatesActor *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(self, modules);
}


#line 11
ImActorModelModulesStateListsStatesActor *new_ImActorModelModulesStateListsStatesActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesStateListsStatesActor *self = [ImActorModelModulesStateListsStatesActor alloc];
  ImActorModelModulesStateListsStatesActor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor)


#line 52
@implementation ImActorModelModulesStateListsStatesActor_OnBookImported

- (instancetype)init {
  ImActorModelModulesStateListsStatesActor_OnBookImported_init(self);
  return self;
}

@end

void ImActorModelModulesStateListsStatesActor_OnBookImported_init(ImActorModelModulesStateListsStatesActor_OnBookImported *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesStateListsStatesActor_OnBookImported *new_ImActorModelModulesStateListsStatesActor_OnBookImported_init() {
  ImActorModelModulesStateListsStatesActor_OnBookImported *self = [ImActorModelModulesStateListsStatesActor_OnBookImported alloc];
  ImActorModelModulesStateListsStatesActor_OnBookImported_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor_OnBookImported)


#line 56
@implementation ImActorModelModulesStateListsStatesActor_OnContactsLoaded

- (instancetype)init {
  ImActorModelModulesStateListsStatesActor_OnContactsLoaded_init(self);
  return self;
}

@end

void ImActorModelModulesStateListsStatesActor_OnContactsLoaded_init(ImActorModelModulesStateListsStatesActor_OnContactsLoaded *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesStateListsStatesActor_OnContactsLoaded *new_ImActorModelModulesStateListsStatesActor_OnContactsLoaded_init() {
  ImActorModelModulesStateListsStatesActor_OnContactsLoaded *self = [ImActorModelModulesStateListsStatesActor_OnContactsLoaded alloc];
  ImActorModelModulesStateListsStatesActor_OnContactsLoaded_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor_OnContactsLoaded)


#line 60
@implementation ImActorModelModulesStateListsStatesActor_OnDialogsLoaded

- (instancetype)init {
  ImActorModelModulesStateListsStatesActor_OnDialogsLoaded_init(self);
  return self;
}

@end

void ImActorModelModulesStateListsStatesActor_OnDialogsLoaded_init(ImActorModelModulesStateListsStatesActor_OnDialogsLoaded *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesStateListsStatesActor_OnDialogsLoaded *new_ImActorModelModulesStateListsStatesActor_OnDialogsLoaded_init() {
  ImActorModelModulesStateListsStatesActor_OnDialogsLoaded *self = [ImActorModelModulesStateListsStatesActor_OnDialogsLoaded alloc];
  ImActorModelModulesStateListsStatesActor_OnDialogsLoaded_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor_OnDialogsLoaded)


#line 64
@implementation ImActorModelModulesStateListsStatesActor_OnContactsChanged


#line 67
- (instancetype)initWithBoolean:(jboolean)isEmpty {
  ImActorModelModulesStateListsStatesActor_OnContactsChanged_initWithBoolean_(self, isEmpty);
  return self;
}


#line 71
- (jboolean)isEmpty {
  return isEmpty__;
}

@end


#line 67
void ImActorModelModulesStateListsStatesActor_OnContactsChanged_initWithBoolean_(ImActorModelModulesStateListsStatesActor_OnContactsChanged *self, jboolean isEmpty) {
  (void) NSObject_init(self);
  
#line 68
  self->isEmpty__ = isEmpty;
}


#line 67
ImActorModelModulesStateListsStatesActor_OnContactsChanged *new_ImActorModelModulesStateListsStatesActor_OnContactsChanged_initWithBoolean_(jboolean isEmpty) {
  ImActorModelModulesStateListsStatesActor_OnContactsChanged *self = [ImActorModelModulesStateListsStatesActor_OnContactsChanged alloc];
  ImActorModelModulesStateListsStatesActor_OnContactsChanged_initWithBoolean_(self, isEmpty);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor_OnContactsChanged)


#line 76
@implementation ImActorModelModulesStateListsStatesActor_OnDialogsChanged


#line 79
- (instancetype)initWithBoolean:(jboolean)isEmpty {
  ImActorModelModulesStateListsStatesActor_OnDialogsChanged_initWithBoolean_(self, isEmpty);
  return self;
}


#line 83
- (jboolean)isEmpty {
  return isEmpty__;
}

@end


#line 79
void ImActorModelModulesStateListsStatesActor_OnDialogsChanged_initWithBoolean_(ImActorModelModulesStateListsStatesActor_OnDialogsChanged *self, jboolean isEmpty) {
  (void) NSObject_init(self);
  
#line 80
  self->isEmpty__ = isEmpty;
}


#line 79
ImActorModelModulesStateListsStatesActor_OnDialogsChanged *new_ImActorModelModulesStateListsStatesActor_OnDialogsChanged_initWithBoolean_(jboolean isEmpty) {
  ImActorModelModulesStateListsStatesActor_OnDialogsChanged *self = [ImActorModelModulesStateListsStatesActor_OnDialogsChanged alloc];
  ImActorModelModulesStateListsStatesActor_OnDialogsChanged_initWithBoolean_(self, isEmpty);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesStateListsStatesActor_OnDialogsChanged)
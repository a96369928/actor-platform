//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/internal/ContentLocalContainer.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/entity/content/internal/AbsContentContainer.h"
#include "im/actor/model/entity/content/internal/AbsLocalContent.h"
#include "im/actor/model/entity/content/internal/ContentLocalContainer.h"

@interface ImActorModelEntityContentInternalContentLocalContainer () {
 @public
  ImActorModelEntityContentInternalAbsLocalContent *content_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelEntityContentInternalContentLocalContainer, content_, ImActorModelEntityContentInternalAbsLocalContent *)

@implementation ImActorModelEntityContentInternalContentLocalContainer

- (instancetype)initWithImActorModelEntityContentInternalAbsLocalContent:(ImActorModelEntityContentInternalAbsLocalContent *)content {
  ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(self, content);
  return self;
}

- (ImActorModelEntityContentInternalAbsLocalContent *)getContent {
  return content_;
}

@end

void ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(ImActorModelEntityContentInternalContentLocalContainer *self, ImActorModelEntityContentInternalAbsLocalContent *content) {
  (void) ImActorModelEntityContentInternalAbsContentContainer_init(self);
  self->content_ = content;
}

ImActorModelEntityContentInternalContentLocalContainer *new_ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(ImActorModelEntityContentInternalAbsLocalContent *content) {
  ImActorModelEntityContentInternalContentLocalContainer *self = [ImActorModelEntityContentInternalContentLocalContainer alloc];
  ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(self, content);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentInternalContentLocalContainer)

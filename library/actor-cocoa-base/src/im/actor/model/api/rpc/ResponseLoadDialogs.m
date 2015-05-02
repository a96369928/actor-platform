//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseLoadDialogs.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseLoadDialogs.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Dialog.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcResponseLoadDialogs () {
 @public
  id<JavaUtilList> groups_;
  id<JavaUtilList> users_;
  id<JavaUtilList> dialogs_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseLoadDialogs, groups_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseLoadDialogs, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseLoadDialogs, dialogs_, id<JavaUtilList>)


#line 20
@implementation ImActorModelApiRpcResponseLoadDialogs


#line 23
+ (ImActorModelApiRpcResponseLoadDialogs *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseLoadDialogs_fromBytesWithByteArray_(data);
}


#line 31
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups
                    withJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)dialogs {
  ImActorModelApiRpcResponseLoadDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(self, groups, users, dialogs);
  return self;
}


#line 37
- (instancetype)init {
  ImActorModelApiRpcResponseLoadDialogs_init(self);
  return self;
}


#line 41
- (id<JavaUtilList>)getGroups {
  return self->groups_;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (id<JavaUtilList>)getDialogs {
  return self->dialogs_;
}


#line 54
- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _groups = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_groups addWithId:new_ImActorModelApiGroup_init()];
  }
  self->groups_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_groups];
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:2]; i++) {
    [_users addWithId:new_ImActorModelApiUser_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:2 withJavaUtilList:_users];
  id<JavaUtilList> _dialogs = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:3]; i++) {
    [_dialogs addWithId:new_ImActorModelApiDialog_init()];
  }
  self->dialogs_ = [values getRepeatedObjWithInt:3 withJavaUtilList:_dialogs];
}


#line 73
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->groups_];
  [writer writeRepeatedObjWithInt:2 withJavaUtilList:self->users_];
  [writer writeRepeatedObjWithInt:3 withJavaUtilList:self->dialogs_];
}


#line 80
- (NSString *)description {
  NSString *res = @"tuple LoadDialogs{";
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 87
- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseLoadDialogs_HEADER;
}

@end


#line 23
ImActorModelApiRpcResponseLoadDialogs *ImActorModelApiRpcResponseLoadDialogs_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseLoadDialogs_initialize();
  
#line 24
  return ((ImActorModelApiRpcResponseLoadDialogs *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcResponseLoadDialogs_init(), data));
}


#line 31
void ImActorModelApiRpcResponseLoadDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(ImActorModelApiRpcResponseLoadDialogs *self, id<JavaUtilList> groups, id<JavaUtilList> users, id<JavaUtilList> dialogs) {
  (void) ImActorModelNetworkParserResponse_init(self);
  
#line 32
  self->groups_ = groups;
  self->users_ = users;
  self->dialogs_ = dialogs;
}


#line 31
ImActorModelApiRpcResponseLoadDialogs *new_ImActorModelApiRpcResponseLoadDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(id<JavaUtilList> groups, id<JavaUtilList> users, id<JavaUtilList> dialogs) {
  ImActorModelApiRpcResponseLoadDialogs *self = [ImActorModelApiRpcResponseLoadDialogs alloc];
  ImActorModelApiRpcResponseLoadDialogs_initWithJavaUtilList_withJavaUtilList_withJavaUtilList_(self, groups, users, dialogs);
  return self;
}

void ImActorModelApiRpcResponseLoadDialogs_init(ImActorModelApiRpcResponseLoadDialogs *self) {
  (void) ImActorModelNetworkParserResponse_init(self);
}


#line 37
ImActorModelApiRpcResponseLoadDialogs *new_ImActorModelApiRpcResponseLoadDialogs_init() {
  ImActorModelApiRpcResponseLoadDialogs *self = [ImActorModelApiRpcResponseLoadDialogs alloc];
  ImActorModelApiRpcResponseLoadDialogs_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseLoadDialogs)
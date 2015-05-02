//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSubscribeToOnline.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSubscribeToOnline.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestSubscribeToOnline.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcRequestSubscribeToOnline () {
 @public
  id<JavaUtilList> users_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSubscribeToOnline, users_, id<JavaUtilList>)


#line 20
@implementation ImActorModelApiRpcRequestSubscribeToOnline


#line 23
+ (ImActorModelApiRpcRequestSubscribeToOnline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSubscribeToOnline_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users {
  ImActorModelApiRpcRequestSubscribeToOnline_initWithJavaUtilList_(self, users);
  return self;
}


#line 33
- (instancetype)init {
  ImActorModelApiRpcRequestSubscribeToOnline_init(self);
  return self;
}


#line 37
- (id<JavaUtilList>)getUsers {
  return self->users_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_users addWithId:new_ImActorModelApiUserOutPeer_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_users];
}


#line 51
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->users_];
}


#line 56
- (NSString *)description {
  NSString *res = @"rpc SubscribeToOnline{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"users=", [((id<JavaUtilList>) nil_chk(self->users_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 64
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSubscribeToOnline_HEADER;
}

@end


#line 23
ImActorModelApiRpcRequestSubscribeToOnline *ImActorModelApiRpcRequestSubscribeToOnline_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSubscribeToOnline_initialize();
  
#line 24
  return ((ImActorModelApiRpcRequestSubscribeToOnline *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestSubscribeToOnline_init(), data));
}


#line 29
void ImActorModelApiRpcRequestSubscribeToOnline_initWithJavaUtilList_(ImActorModelApiRpcRequestSubscribeToOnline *self, id<JavaUtilList> users) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 30
  self->users_ = users;
}


#line 29
ImActorModelApiRpcRequestSubscribeToOnline *new_ImActorModelApiRpcRequestSubscribeToOnline_initWithJavaUtilList_(id<JavaUtilList> users) {
  ImActorModelApiRpcRequestSubscribeToOnline *self = [ImActorModelApiRpcRequestSubscribeToOnline alloc];
  ImActorModelApiRpcRequestSubscribeToOnline_initWithJavaUtilList_(self, users);
  return self;
}


#line 33
void ImActorModelApiRpcRequestSubscribeToOnline_init(ImActorModelApiRpcRequestSubscribeToOnline *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 33
ImActorModelApiRpcRequestSubscribeToOnline *new_ImActorModelApiRpcRequestSubscribeToOnline_init() {
  ImActorModelApiRpcRequestSubscribeToOnline *self = [ImActorModelApiRpcRequestSubscribeToOnline alloc];
  ImActorModelApiRpcRequestSubscribeToOnline_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSubscribeToOnline)
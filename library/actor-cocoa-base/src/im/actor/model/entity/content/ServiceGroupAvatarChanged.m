//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/ServiceGroupAvatarChanged.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/ServiceGroupAvatarChanged.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/ServiceGroupAvatarChanged.h"
#include "java/io/IOException.h"

@interface AMServiceGroupAvatarChanged () {
 @public
  AMAvatar *newAvatar_;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(AMServiceGroupAvatarChanged, newAvatar_, AMAvatar *)


#line 13
@implementation AMServiceGroupAvatarChanged

+ (AMServiceGroupAvatarChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return AMServiceGroupAvatarChanged_fromBytesWithByteArray_(data);
}


#line 21
- (instancetype)initWithAMAvatar:(AMAvatar *)newAvatar {
  if (self =
#line 22
  [super initWithNSString:@"Group avatar changed"]) {
    
#line 23
    self->newAvatar_ = newAvatar;
  }
  return self;
}


#line 26
- (instancetype)init {
  return [super init];
}

- (AMAvatar *)getNewAvatar {
  
#line 31
  return newAvatar_;
}


#line 35
- (AMAbsContent_ContentTypeEnum *)getContentType {
  return AMAbsContent_ContentTypeEnum_get_SERVICE_AVATAR();
}


#line 40
- (void)parseWithBSBserValues:(BSBserValues *)values {
  
#line 41
  [super parseWithBSBserValues:values];
  IOSByteArray *data = [((BSBserValues *) nil_chk(values)) optBytesWithInt:10];
  if (data != nil) {
    newAvatar_ = AMAvatar_fromBytesWithByteArray_(data);
  }
}


#line 49
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [super serializeWithBSBserWriter:writer];
  if (newAvatar_ != nil) {
    [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:10 withBSBserObject:newAvatar_];
  }
}

- (void)copyAllFieldsTo:(AMServiceGroupAvatarChanged *)other {
  [super copyAllFieldsTo:other];
  other->newAvatar_ = newAvatar_;
}

@end

AMServiceGroupAvatarChanged *AMServiceGroupAvatarChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  AMServiceGroupAvatarChanged_init();
  
#line 16
  return ((AMServiceGroupAvatarChanged *) BSBser_parseWithBSBserObject_withByteArray_([[AMServiceGroupAvatarChanged alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMServiceGroupAvatarChanged)
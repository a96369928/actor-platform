//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/util/JavaUtil.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/util/JavaUtil.java"

#include "J2ObjC_source.h"
#include "im/actor/model/util/JavaUtil.h"


#line 6
@implementation AMJavaUtil


#line 7
+ (jboolean)equalsEWithId:(id)a
                   withId:(id)b {
  return AMJavaUtil_equalsEWithId_withId_(a, b);
}

- (instancetype)init {
  return [super init];
}

@end

jboolean AMJavaUtil_equalsEWithId_withId_(id a, id b) {
  AMJavaUtil_init();
  
#line 8
  if (a == nil && b == nil) {
    return YES;
  }
  if (a != nil && b == nil) {
    return NO;
  }
  if (b != nil && a == nil) {
    return NO;
  }
  return [nil_chk(a) isEqual:b];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMJavaUtil)
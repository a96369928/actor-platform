//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/PhoneBookContact.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/PhoneBookContact.java"

#include "J2ObjC_source.h"
#include "im/actor/model/entity/PhoneBookContact.h"
#include "java/util/ArrayList.h"

@interface AMPhoneBookContact () {
 @public
  jlong contactId_;
  NSString *name_;
  JavaUtilArrayList *phones_;
  JavaUtilArrayList *emails_;
}
@end

J2OBJC_FIELD_SETTER(AMPhoneBookContact, name_, NSString *)
J2OBJC_FIELD_SETTER(AMPhoneBookContact, phones_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(AMPhoneBookContact, emails_, JavaUtilArrayList *)


#line 8
@implementation AMPhoneBookContact


#line 15
- (instancetype)initWithLong:(jlong)contactId
                withNSString:(NSString *)name
       withJavaUtilArrayList:(JavaUtilArrayList *)phones
       withJavaUtilArrayList:(JavaUtilArrayList *)emails {
  if (self = [super init]) {
    phones_ =
#line 12
    [[JavaUtilArrayList alloc] init];
    emails_ =
#line 13
    [[JavaUtilArrayList alloc] init];
    
#line 16
    self->contactId_ = contactId;
    
#line 17
    self->name_ = name;
    
#line 18
    self->phones_ = phones;
    
#line 19
    self->emails_ = emails;
  }
  return self;
}


#line 22
- (JavaUtilArrayList *)getPhones {
  
#line 23
  return phones_;
}


#line 26
- (JavaUtilArrayList *)getEmails {
  
#line 27
  return emails_;
}


#line 30
- (NSString *)getName {
  
#line 31
  return name_;
}


#line 34
- (jlong)getContactId {
  
#line 35
  return contactId_;
}

- (void)copyAllFieldsTo:(AMPhoneBookContact *)other {
  [super copyAllFieldsTo:other];
  other->contactId_ = contactId_;
  other->name_ = name_;
  other->phones_ = phones_;
  other->emails_ = emails_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMPhoneBookContact)
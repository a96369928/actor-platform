//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/storage/MemoryKeyValueEngine.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/mvvm/KeyValueItem.h"
#include "im/actor/model/storage/MemoryKeyValueEngine.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"

@interface AMMemoryKeyValueEngine () {
 @public
  JavaUtilHashMap *users_;
}
@end

J2OBJC_FIELD_SETTER(AMMemoryKeyValueEngine, users_, JavaUtilHashMap *)

@implementation AMMemoryKeyValueEngine

- (void)addOrUpdateItemWithAMKeyValueItem:(id<AMKeyValueItem>)item {
  @synchronized(self) {
    (void) [((JavaUtilHashMap *) nil_chk(users_)) putWithId:JavaLangLong_valueOfWithLong_([((id<AMKeyValueItem>) nil_chk(item)) getEngineId]) withId:item];
  }
}

- (void)addOrUpdateItemsWithJavaUtilList:(id<JavaUtilList>)values {
  @synchronized(self) {
    for (id<AMKeyValueItem> __strong u in nil_chk(values)) {
      (void) [((JavaUtilHashMap *) nil_chk(users_)) putWithId:JavaLangLong_valueOfWithLong_([((id<AMKeyValueItem>) nil_chk(u)) getEngineId]) withId:u];
    }
  }
}

- (void)removeItemWithLong:(jlong)id_ {
  @synchronized(self) {
    (void) [((JavaUtilHashMap *) nil_chk(users_)) removeWithId:JavaLangLong_valueOfWithLong_((jlong) id_)];
  }
}

- (void)removeItemsWithLongArray:(IOSLongArray *)ids {
  @synchronized(self) {
    {
      IOSLongArray *a__ = ids;
      jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
      jlong const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        jlong id_ = *b__++;
        (void) [((JavaUtilHashMap *) nil_chk(users_)) removeWithId:JavaLangLong_valueOfWithLong_((jlong) id_)];
      }
    }
  }
}

- (void)clear {
  @synchronized(self) {
    [((JavaUtilHashMap *) nil_chk(users_)) clear];
  }
}

- (id<JavaUtilList>)getAll {
  @synchronized(self) {
    return [[JavaUtilArrayList alloc] initWithJavaUtilCollection:[((JavaUtilHashMap *) nil_chk(users_)) values]];
  }
}

- (id)getValueWithLong:(jlong)id_ {
  @synchronized(self) {
    return [((JavaUtilHashMap *) nil_chk(users_)) getWithId:JavaLangLong_valueOfWithLong_((jlong) id_)];
  }
}

- (instancetype)init {
  if (self = [super init]) {
    users_ = [[JavaUtilHashMap alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(AMMemoryKeyValueEngine *)other {
  [super copyAllFieldsTo:other];
  other->users_ = users_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addOrUpdateItemWithAMKeyValueItem:", "addOrUpdateItem", "V", 0x21, NULL },
    { "addOrUpdateItemsWithJavaUtilList:", "addOrUpdateItems", "V", 0x21, NULL },
    { "removeItemWithLong:", "removeItem", "V", 0x21, NULL },
    { "removeItemsWithLongArray:", "removeItems", "V", 0x21, NULL },
    { "clear", NULL, "V", 0x21, NULL },
    { "getAll", NULL, "Ljava.util.List;", 0x21, NULL },
    { "getValueWithLong:", "getValue", "TT;", 0x21, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "users_", NULL, 0x2, "Ljava.util.HashMap;", NULL,  },
  };
  static const J2ObjcClassInfo _AMMemoryKeyValueEngine = { 1, "MemoryKeyValueEngine", "im.actor.model.storage", NULL, 0x1, 8, methods, 1, fields, 0, NULL};
  return &_AMMemoryKeyValueEngine;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMMemoryKeyValueEngine)
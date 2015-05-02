//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/util/SparseArray.java
//

#ifndef _ImActorModelDroidkitBserUtilSparseArray_H_
#define _ImActorModelDroidkitBserUtilSparseArray_H_

#include "J2ObjC_header.h"

@interface ImActorModelDroidkitBserUtilSparseArray : NSObject < NSCopying >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)initialCapacity;

- (void)appendWithInt:(jint)key
               withId:(id)value;

- (void)clear;

- (jboolean)containsKeyWithInt:(jint)key;

- (void)delete__WithInt:(jint)key;

- (id)getWithInt:(jint)key;

- (id)getWithInt:(jint)key
          withId:(id)valueIfKeyNotFound;

- (jint)indexOfKeyWithInt:(jint)key;

- (jint)indexOfValueWithId:(id)value;

- (jint)keyAtWithInt:(jint)index;

- (void)putWithInt:(jint)key
            withId:(id)value;

- (void)removeWithInt:(jint)key;

- (void)removeAtWithInt:(jint)index;

- (void)removeAtRangeWithInt:(jint)index
                     withInt:(jint)size;

- (void)setValueAtWithInt:(jint)index
                   withId:(id)value;

- (jint)size;

- (NSString *)description;

- (id)valueAtWithInt:(jint)index;

@end

J2OBJC_STATIC_INIT(ImActorModelDroidkitBserUtilSparseArray)

FOUNDATION_EXPORT void ImActorModelDroidkitBserUtilSparseArray_init(ImActorModelDroidkitBserUtilSparseArray *self);

FOUNDATION_EXPORT ImActorModelDroidkitBserUtilSparseArray *new_ImActorModelDroidkitBserUtilSparseArray_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelDroidkitBserUtilSparseArray_initWithInt_(ImActorModelDroidkitBserUtilSparseArray *self, jint initialCapacity);

FOUNDATION_EXPORT ImActorModelDroidkitBserUtilSparseArray *new_ImActorModelDroidkitBserUtilSparseArray_initWithInt_(jint initialCapacity) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelDroidkitBserUtilSparseArray)

#endif // _ImActorModelDroidkitBserUtilSparseArray_H_
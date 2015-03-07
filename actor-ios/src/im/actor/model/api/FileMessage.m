//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/FileMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/api/FileMessage.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"

@interface ImActorModelApiFileMessage () {
 @public
  jlong fileId_;
  jlong accessHash_;
  jint fileSize_;
  NSString *name_;
  NSString *mimeType_;
  ImActorModelApiFastThumb *thumb_;
  jint extType_;
  IOSByteArray *ext_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiFileMessage, name_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiFileMessage, mimeType_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiFileMessage, thumb_, ImActorModelApiFastThumb *)
J2OBJC_FIELD_SETTER(ImActorModelApiFileMessage, ext_, IOSByteArray *)

@implementation ImActorModelApiFileMessage

- (instancetype)initWithLong:(jlong)fileId
                    withLong:(jlong)accessHash
                     withInt:(jint)fileSize
                withNSString:(NSString *)name
                withNSString:(NSString *)mimeType
withImActorModelApiFastThumb:(ImActorModelApiFastThumb *)thumb
                     withInt:(jint)extType
               withByteArray:(IOSByteArray *)ext {
  if (self = [super init]) {
    self->fileId_ = fileId;
    self->accessHash_ = accessHash;
    self->fileSize_ = fileSize;
    self->name_ = name;
    self->mimeType_ = mimeType;
    self->thumb_ = thumb;
    self->extType_ = extType;
    self->ext_ = ext;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getFileId {
  return self->fileId_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (jint)getFileSize {
  return self->fileSize_;
}

- (NSString *)getName {
  return self->name_;
}

- (NSString *)getMimeType {
  return self->mimeType_;
}

- (ImActorModelApiFastThumb *)getThumb {
  return self->thumb_;
}

- (jint)getExtType {
  return self->extType_;
}

- (IOSByteArray *)getExt {
  return self->ext_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->fileId_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->fileSize_ = [values getIntWithInt:3];
  self->name_ = [values getStringWithInt:4];
  self->mimeType_ = [values getStringWithInt:5];
  self->thumb_ = [values optObjWithInt:6 withBSBserObject:[[ImActorModelApiFastThumb alloc] init]];
  self->extType_ = [values getIntWithInt:7];
  self->ext_ = [values optBytesWithInt:8];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->fileId_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  [writer writeIntWithInt:3 withInt:self->fileSize_];
  if (self->name_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:4 withNSString:self->name_];
  if (self->mimeType_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:5 withNSString:self->mimeType_];
  if (self->thumb_ != nil) {
    [writer writeObjectWithInt:6 withBSBserObject:self->thumb_];
  }
  [writer writeIntWithInt:7 withInt:self->extType_];
  if (self->ext_ != nil) {
    [writer writeBytesWithInt:8 withByteArray:self->ext_];
  }
}

- (NSString *)description {
  NSString *res = @"struct FileMessage{";
  res = JreStrcat("$$", res, JreStrcat("$J", @"fileId=", self->fileId_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", fileSize=", self->fileSize_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", name=", self->name_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", mimeType=", self->mimeType_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", thumb=", (self->thumb_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$$", res, JreStrcat("$I", @", extType=", self->extType_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", ext=", BSUtils_byteArrayToStringCompactWithByteArray_(self->ext_)));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiFileMessage *)other {
  [super copyAllFieldsTo:other];
  other->fileId_ = fileId_;
  other->accessHash_ = accessHash_;
  other->fileSize_ = fileSize_;
  other->name_ = name_;
  other->mimeType_ = mimeType_;
  other->thumb_ = thumb_;
  other->extType_ = extType_;
  other->ext_ = ext_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiFileMessage)
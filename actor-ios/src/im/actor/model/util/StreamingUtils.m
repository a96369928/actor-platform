//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/util/StreamingUtils.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/util/StreamingUtils.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/io/RandomAccessFile.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/lang/Double.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Thread.h"

@implementation AMStreamingUtils

+ (IOSByteArray *)intToBytesWithInt:(jint)v {
  return AMStreamingUtils_intToBytesWithInt_(v);
}

+ (void)writeByteWithInt:(jint)v
  withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeByteWithInt_withJavaIoOutputStream_(v, stream);
}

+ (void)writeByteWithByte:(jbyte)v
   withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_(v, stream);
}

+ (void)writeIntWithInt:(jint)v
 withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeIntWithInt_withJavaIoOutputStream_(v, stream);
}

+ (void)writeLongWithLong:(jlong)v
   withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeLongWithLong_withJavaIoOutputStream_(v, stream);
}

+ (void)writeDoubleWithDouble:(jdouble)v
       withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeDoubleWithDouble_withJavaIoOutputStream_(v, stream);
}

+ (void)writeBytesWithByteArray:(IOSByteArray *)data
         withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeBytesWithByteArray_withJavaIoOutputStream_(data, stream);
}

+ (void)writeBytesWithByteArray:(IOSByteArray *)data
                        withInt:(jint)offset
                        withInt:(jint)len
         withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeBytesWithByteArray_withInt_withInt_withJavaIoOutputStream_(data, offset, len, stream);
}

+ (jint)readIntWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readIntWithJavaIoInputStream_(stream);
}

+ (jlong)readUIntWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readUIntWithJavaIoInputStream_(stream);
}

+ (jlong)readLongWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readLongWithJavaIoInputStream_(stream);
}

+ (jdouble)readDoubleWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readDoubleWithJavaIoInputStream_(stream);
}

+ (IOSByteArray *)readBytesWithInt:(jint)count
             withJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readBytesWithInt_withJavaIoInputStream_(count, stream);
}

+ (IOSByteArray *)readBytesWithInt:(jint)count
        withJavaIoRandomAccessFile:(JavaIoRandomAccessFile *)file {
  return AMStreamingUtils_readBytesWithInt_withJavaIoRandomAccessFile_(count, file);
}

+ (void)skipBytesWithInt:(jint)count
   withJavaIoInputStream:(JavaIoInputStream *)stream {
  AMStreamingUtils_skipBytesWithInt_withJavaIoInputStream_(count, stream);
}

+ (void)readBytesWithByteArray:(IOSByteArray *)buffer
                       withInt:(jint)offset
                       withInt:(jint)count
         withJavaIoInputStream:(JavaIoInputStream *)stream {
  AMStreamingUtils_readBytesWithByteArray_withInt_withInt_withJavaIoInputStream_(buffer, offset, count, stream);
}

+ (jbyte)readByteWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readByteWithJavaIoInputStream_(stream);
}

+ (jint)readIntWithByteArray:(IOSByteArray *)src {
  return AMStreamingUtils_readIntWithByteArray_(src);
}

+ (jint)readIntWithByteArray:(IOSByteArray *)src
                     withInt:(jint)offset {
  return AMStreamingUtils_readIntWithByteArray_withInt_(src, offset);
}

+ (jlong)readUIntWithByteArray:(IOSByteArray *)src {
  return AMStreamingUtils_readUIntWithByteArray_(src);
}

+ (jlong)readUIntWithByteArray:(IOSByteArray *)src
                       withInt:(jint)offset {
  return AMStreamingUtils_readUIntWithByteArray_withInt_(src, offset);
}

+ (jlong)readLongWithByteArray:(IOSByteArray *)src
                       withInt:(jint)offset {
  return AMStreamingUtils_readLongWithByteArray_withInt_(src, offset);
}

+ (jlong)readVarIntWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readVarIntWithJavaIoInputStream_(stream);
}

+ (void)writeVarIntWithLong:(jlong)i
     withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeVarIntWithLong_withJavaIoOutputStream_(i, stream);
}

+ (jint)varintSizeWithLong:(jlong)value {
  return AMStreamingUtils_varintSizeWithLong_(value);
}

+ (jint)stringSizeWithNSString:(NSString *)s {
  return AMStreamingUtils_stringSizeWithNSString_(s);
}

+ (IOSByteArray *)readProtoBytesWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readProtoBytesWithJavaIoInputStream_(stream);
}

+ (void)writeProtoBytesWithByteArray:(IOSByteArray *)data
              withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeProtoBytesWithByteArray_withJavaIoOutputStream_(data, stream);
}

+ (void)writeProtoBytesWithByteArray:(IOSByteArray *)data
                             withInt:(jint)offset
                             withInt:(jint)len
              withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeProtoBytesWithByteArray_withInt_withInt_withJavaIoOutputStream_(data, offset, len, stream);
}

+ (IOSLongArray *)readProtoLongsWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readProtoLongsWithJavaIoInputStream_(stream);
}

+ (void)writeProtoLongsWithLongArray:(IOSLongArray *)values
              withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeProtoLongsWithLongArray_withJavaIoOutputStream_(values, stream);
}

+ (NSString *)readProtoStringWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readProtoStringWithJavaIoInputStream_(stream);
}

+ (void)writeProtoStringWithNSString:(NSString *)value
              withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeProtoStringWithNSString_withJavaIoOutputStream_(value, stream);
}

+ (jboolean)readProtoBoolWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return AMStreamingUtils_readProtoBoolWithJavaIoInputStream_(stream);
}

+ (void)writeProtoBoolWithBoolean:(jboolean)v
           withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  AMStreamingUtils_writeProtoBoolWithBoolean_withJavaIoOutputStream_(v, stream);
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "intToBytesWithInt:", "intToBytes", "[B", 0x9, NULL },
    { "writeByteWithInt:withJavaIoOutputStream:", "writeByte", "V", 0x9, "Ljava.io.IOException;" },
    { "writeByteWithByte:withJavaIoOutputStream:", "writeByte", "V", 0x9, "Ljava.io.IOException;" },
    { "writeIntWithInt:withJavaIoOutputStream:", "writeInt", "V", 0x9, "Ljava.io.IOException;" },
    { "writeLongWithLong:withJavaIoOutputStream:", "writeLong", "V", 0x9, "Ljava.io.IOException;" },
    { "writeDoubleWithDouble:withJavaIoOutputStream:", "writeDouble", "V", 0x9, "Ljava.io.IOException;" },
    { "writeBytesWithByteArray:withJavaIoOutputStream:", "writeBytes", "V", 0x9, "Ljava.io.IOException;" },
    { "writeBytesWithByteArray:withInt:withInt:withJavaIoOutputStream:", "writeBytes", "V", 0x9, "Ljava.io.IOException;" },
    { "readIntWithJavaIoInputStream:", "readInt", "I", 0x9, "Ljava.io.IOException;" },
    { "readUIntWithJavaIoInputStream:", "readUInt", "J", 0x9, "Ljava.io.IOException;" },
    { "readLongWithJavaIoInputStream:", "readLong", "J", 0x9, "Ljava.io.IOException;" },
    { "readDoubleWithJavaIoInputStream:", "readDouble", "D", 0x9, "Ljava.io.IOException;" },
    { "readBytesWithInt:withJavaIoInputStream:", "readBytes", "[B", 0x9, "Ljava.io.IOException;" },
    { "readBytesWithInt:withJavaIoRandomAccessFile:", "readBytes", "[B", 0x9, "Ljava.io.IOException;" },
    { "skipBytesWithInt:withJavaIoInputStream:", "skipBytes", "V", 0x9, "Ljava.io.IOException;" },
    { "readBytesWithByteArray:withInt:withInt:withJavaIoInputStream:", "readBytes", "V", 0x9, "Ljava.io.IOException;" },
    { "readByteWithJavaIoInputStream:", "readByte", "B", 0x9, "Ljava.io.IOException;" },
    { "readIntWithByteArray:", "readInt", "I", 0x9, NULL },
    { "readIntWithByteArray:withInt:", "readInt", "I", 0x9, NULL },
    { "readUIntWithByteArray:", "readUInt", "J", 0x9, NULL },
    { "readUIntWithByteArray:withInt:", "readUInt", "J", 0x9, NULL },
    { "readLongWithByteArray:withInt:", "readLong", "J", 0x9, NULL },
    { "readVarIntWithJavaIoInputStream:", "readVarInt", "J", 0x9, "Ljava.io.IOException;" },
    { "writeVarIntWithLong:withJavaIoOutputStream:", "writeVarInt", "V", 0x9, "Ljava.io.IOException;" },
    { "varintSizeWithLong:", "varintSize", "I", 0x9, NULL },
    { "stringSizeWithNSString:", "stringSize", "I", 0x9, NULL },
    { "readProtoBytesWithJavaIoInputStream:", "readProtoBytes", "[B", 0x9, "Ljava.io.IOException;" },
    { "writeProtoBytesWithByteArray:withJavaIoOutputStream:", "writeProtoBytes", "V", 0x9, "Ljava.io.IOException;" },
    { "writeProtoBytesWithByteArray:withInt:withInt:withJavaIoOutputStream:", "writeProtoBytes", "V", 0x9, "Ljava.io.IOException;" },
    { "readProtoLongsWithJavaIoInputStream:", "readProtoLongs", "[J", 0x9, "Ljava.io.IOException;" },
    { "writeProtoLongsWithLongArray:withJavaIoOutputStream:", "writeProtoLongs", "V", 0x9, "Ljava.io.IOException;" },
    { "readProtoStringWithJavaIoInputStream:", "readProtoString", "Ljava.lang.String;", 0x9, "Ljava.io.IOException;" },
    { "writeProtoStringWithNSString:withJavaIoOutputStream:", "writeProtoString", "V", 0x9, "Ljava.io.IOException;" },
    { "readProtoBoolWithJavaIoInputStream:", "readProtoBool", "Z", 0x9, "Ljava.io.IOException;" },
    { "writeProtoBoolWithBoolean:withJavaIoOutputStream:", "writeProtoBool", "V", 0x9, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _AMStreamingUtils = { 1, "StreamingUtils", "im.actor.model.util", NULL, 0x1, 36, methods, 0, NULL, 0, NULL};
  return &_AMStreamingUtils;
}

@end

IOSByteArray *AMStreamingUtils_intToBytesWithInt_(jint v) {
  AMStreamingUtils_init();
  return [IOSByteArray arrayWithBytes:(jbyte[]){ (jbyte) ((RShift32(v, 24)) & (jint) 0xFF), (jbyte) ((RShift32(v, 16)) & (jint) 0xFF), (jbyte) ((RShift32(v, 8)) & (jint) 0xFF), (jbyte) (v & (jint) 0xFF) } count:4];
}

void AMStreamingUtils_writeByteWithInt_withJavaIoOutputStream_(jint v, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithInt:v];
}

void AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_(jbyte v, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithInt:v];
}

void AMStreamingUtils_writeIntWithInt_withJavaIoOutputStream_(jint v, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift32(v, 24)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift32(v, 16)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift32(v, 8)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) (v & (jint) 0xFF), stream);
}

void AMStreamingUtils_writeLongWithLong_withJavaIoOutputStream_(jlong v, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift64(v, 56)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift64(v, 48)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift64(v, 40)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift64(v, 32)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift64(v, 24)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift64(v, 16)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) ((RShift64(v, 8)) & (jint) 0xFF), stream);
  AMStreamingUtils_writeByteWithByte_withJavaIoOutputStream_((jbyte) (v & (jint) 0xFF), stream);
}

void AMStreamingUtils_writeDoubleWithDouble_withJavaIoOutputStream_(jdouble v, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  AMStreamingUtils_writeLongWithLong_withJavaIoOutputStream_(JavaLangDouble_doubleToLongBitsWithDouble_(v), stream);
}

void AMStreamingUtils_writeBytesWithByteArray_withJavaIoOutputStream_(IOSByteArray *data, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithByteArray:data];
}

void AMStreamingUtils_writeBytesWithByteArray_withInt_withInt_withJavaIoOutputStream_(IOSByteArray *data, jint offset, jint len, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithByteArray:data withInt:offset withInt:len];
}

jint AMStreamingUtils_readIntWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  jint a = [((JavaIoInputStream *) nil_chk(stream)) read];
  if (a < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  jint b = [stream read];
  if (b < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  jint c = [stream read];
  if (c < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  jint d = [stream read];
  if (d < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  return d + (LShift32(c, 8)) + (LShift32(b, 16)) + (LShift32(a, 24));
}

jlong AMStreamingUtils_readUIntWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  jlong a = [((JavaIoInputStream *) nil_chk(stream)) read];
  if (a < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  jlong b = [stream read];
  if (b < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  jlong c = [stream read];
  if (c < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  jlong d = [stream read];
  if (d < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  return d + (LShift64(c, 8)) + (LShift64(b, 16)) + (LShift64(a, 24));
}

jlong AMStreamingUtils_readLongWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  jlong a = AMStreamingUtils_readUIntWithJavaIoInputStream_(stream);
  jlong b = AMStreamingUtils_readUIntWithJavaIoInputStream_(stream);
  return b + (LShift64(a, 32));
}

jdouble AMStreamingUtils_readDoubleWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  return JavaLangDouble_longBitsToDoubleWithLong_(AMStreamingUtils_readLongWithJavaIoInputStream_(stream));
}

IOSByteArray *AMStreamingUtils_readBytesWithInt_withJavaIoInputStream_(jint count, JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  IOSByteArray *res = [IOSByteArray arrayWithLength:count];
  jint offset = 0;
  while (offset < res->size_) {
    jint readed = [((JavaIoInputStream *) nil_chk(stream)) readWithByteArray:res withInt:offset withInt:res->size_ - offset];
    if (readed > 0) {
      offset += readed;
    }
    else if (readed < 0) {
      @throw [[[JavaIoIOException alloc] init] autorelease];
    }
    else {
      JavaLangThread_yield();
    }
  }
  return res;
}

IOSByteArray *AMStreamingUtils_readBytesWithInt_withJavaIoRandomAccessFile_(jint count, JavaIoRandomAccessFile *file) {
  AMStreamingUtils_init();
  IOSByteArray *res = [IOSByteArray arrayWithLength:count];
  jint offset = 0;
  while (offset < res->size_) {
    jint readed = [((JavaIoRandomAccessFile *) nil_chk(file)) readWithByteArray:res withInt:offset withInt:res->size_ - offset];
    if (readed > 0) {
      offset += readed;
    }
    else if (readed < 0) {
      @throw [[[JavaIoIOException alloc] init] autorelease];
    }
    else {
      JavaLangThread_yield();
    }
  }
  return res;
}

void AMStreamingUtils_skipBytesWithInt_withJavaIoInputStream_(jint count, JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  [((JavaIoInputStream *) nil_chk(stream)) skipWithLong:count];
}

void AMStreamingUtils_readBytesWithByteArray_withInt_withInt_withJavaIoInputStream_(IOSByteArray *buffer, jint offset, jint count, JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  jint woffset = 0;
  while (woffset < count) {
    jint readed = [((JavaIoInputStream *) nil_chk(stream)) readWithByteArray:buffer withInt:woffset + offset withInt:count - woffset];
    if (readed > 0) {
      woffset += readed;
    }
    else if (readed < 0) {
      @throw [[[JavaIoIOException alloc] init] autorelease];
    }
    else {
      JavaLangThread_yield();
    }
  }
}

jbyte AMStreamingUtils_readByteWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  jint res = [((JavaIoInputStream *) nil_chk(stream)) read];
  if (res < 0) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  return (jbyte) res;
}

jint AMStreamingUtils_readIntWithByteArray_(IOSByteArray *src) {
  AMStreamingUtils_init();
  return AMStreamingUtils_readIntWithByteArray_withInt_(src, 0);
}

jint AMStreamingUtils_readIntWithByteArray_withInt_(IOSByteArray *src, jint offset) {
  AMStreamingUtils_init();
  jint a = IOSByteArray_Get(nil_chk(src), offset + 0) & (jint) 0xFF;
  jint b = IOSByteArray_Get(src, offset + 1) & (jint) 0xFF;
  jint c = IOSByteArray_Get(src, offset + 2) & (jint) 0xFF;
  jint d = IOSByteArray_Get(src, offset + 3) & (jint) 0xFF;
  return a + (LShift32(b, 8)) + (LShift32(c, 16)) + (LShift32(d, 24));
}

jlong AMStreamingUtils_readUIntWithByteArray_(IOSByteArray *src) {
  AMStreamingUtils_init();
  return AMStreamingUtils_readUIntWithByteArray_withInt_(src, 0);
}

jlong AMStreamingUtils_readUIntWithByteArray_withInt_(IOSByteArray *src, jint offset) {
  AMStreamingUtils_init();
  jlong a = IOSByteArray_Get(nil_chk(src), offset + 0) & (jint) 0xFF;
  jlong b = IOSByteArray_Get(src, offset + 1) & (jint) 0xFF;
  jlong c = IOSByteArray_Get(src, offset + 2) & (jint) 0xFF;
  jlong d = IOSByteArray_Get(src, offset + 3) & (jint) 0xFF;
  return d + (LShift64(c, 8)) + (LShift64(b, 16)) + (LShift64(a, 24));
}

jlong AMStreamingUtils_readLongWithByteArray_withInt_(IOSByteArray *src, jint offset) {
  AMStreamingUtils_init();
  jlong a = AMStreamingUtils_readUIntWithByteArray_withInt_(src, offset);
  jlong b = AMStreamingUtils_readUIntWithByteArray_withInt_(src, offset + 4);
  return (b & (jint) 0xFFFFFFFF) + (LShift64((a & (jint) 0xFFFFFFFF), 32));
}

jlong AMStreamingUtils_readVarIntWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  jlong value = 0;
  jlong i = 0;
  jint b;
  do {
    b = AMStreamingUtils_readByteWithJavaIoInputStream_(stream);
    if ((b & (jint) 0x80) != 0) {
      value |= LShift32((b & (jint) 0x7F), i);
      i += 7;
      if (i > 70) {
        @throw [[[JavaIoIOException alloc] init] autorelease];
      }
    }
    else {
      break;
    }
  }
  while (YES);
  return value | (LShift32(b, i));
}

void AMStreamingUtils_writeVarIntWithLong_withJavaIoOutputStream_(jlong i, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  while ((i & (jlong) 0xffffffffffffff80l) != 0l) {
    [((JavaIoOutputStream *) nil_chk(stream)) writeWithInt:(jbyte) ((i & (jint) 0x7f) | (jint) 0x80)];
    URShiftAssignLong(&i, 7);
  }
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithInt:(jbyte) (i & (jint) 0x7f)];
}

jint AMStreamingUtils_varintSizeWithLong_(jlong value) {
  AMStreamingUtils_init();
  if (value < 0) {
    @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"VarInt must be >= 0"] autorelease];
  }
  if (value <= (jint) 0x7f) {
    return 1;
  }
  else if (value <= (jint) 0x3fff) {
    return 2;
  }
  else if (value <= (jint) 0x1fffff) {
    return 3;
  }
  else if (value <= (jint) 0xfffffff) {
    return 4;
  }
  else if (value <= (jint) 0x7fffffff) {
    return 5;
  }
  else if (value <= (jlong) 0x7ffffffffl) {
    return 6;
  }
  else if (value <= (jlong) 0x3ffffffffffl) {
    return 7;
  }
  else if (value <= (jlong) 0x1ffffffffffffl) {
    return 8;
  }
  else if (value <= (jlong) 0xffffffffffffffl) {
    return 9;
  }
  else {
    return 10;
  }
}

jint AMStreamingUtils_stringSizeWithNSString_(NSString *s) {
  AMStreamingUtils_init();
  jint stringSize = 0;
  if (s != nil) {
    @try {
      stringSize = ((IOSByteArray *) nil_chk([s getBytesWithCharsetName:@"UTF-8"]))->size_;
    }
    @catch (JavaIoUnsupportedEncodingException *e) {
      @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:e] autorelease];
    }
  }
  return AMStreamingUtils_varintSizeWithLong_(stringSize) + stringSize;
}

IOSByteArray *AMStreamingUtils_readProtoBytesWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  jint arrayLength = (jint) AMStreamingUtils_readVarIntWithJavaIoInputStream_(stream);
  return AMStreamingUtils_readBytesWithInt_withJavaIoInputStream_(arrayLength, stream);
}

void AMStreamingUtils_writeProtoBytesWithByteArray_withJavaIoOutputStream_(IOSByteArray *data, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  AMStreamingUtils_writeVarIntWithLong_withJavaIoOutputStream_(((IOSByteArray *) nil_chk(data))->size_, stream);
  AMStreamingUtils_writeBytesWithByteArray_withJavaIoOutputStream_(data, stream);
}

void AMStreamingUtils_writeProtoBytesWithByteArray_withInt_withInt_withJavaIoOutputStream_(IOSByteArray *data, jint offset, jint len, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  AMStreamingUtils_writeVarIntWithLong_withJavaIoOutputStream_(len, stream);
  AMStreamingUtils_writeBytesWithByteArray_withInt_withInt_withJavaIoOutputStream_(data, offset, len, stream);
}

IOSLongArray *AMStreamingUtils_readProtoLongsWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  jint len = (jint) AMStreamingUtils_readVarIntWithJavaIoInputStream_(stream);
  IOSLongArray *res = [IOSLongArray arrayWithLength:len];
  for (jint i = 0; i < res->size_; i++) {
    *IOSLongArray_GetRef(res, i) = AMStreamingUtils_readLongWithJavaIoInputStream_(stream);
  }
  return res;
}

void AMStreamingUtils_writeProtoLongsWithLongArray_withJavaIoOutputStream_(IOSLongArray *values, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  AMStreamingUtils_writeVarIntWithLong_withJavaIoOutputStream_(((IOSLongArray *) nil_chk(values))->size_, stream);
  {
    IOSLongArray *a__ = values;
    jlong const *b__ = a__->buffer_;
    jlong const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jlong l = *b__++;
      AMStreamingUtils_writeLongWithLong_withJavaIoOutputStream_(l, stream);
    }
  }
}

NSString *AMStreamingUtils_readProtoStringWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  IOSByteArray *data = AMStreamingUtils_readProtoBytesWithJavaIoInputStream_(stream);
  return [NSString stringWithBytes:data charsetName:@"UTF-8"];
}

void AMStreamingUtils_writeProtoStringWithNSString_withJavaIoOutputStream_(NSString *value, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  IOSByteArray *data = [((NSString *) nil_chk(value)) getBytesWithCharsetName:@"UTF-8"];
  AMStreamingUtils_writeProtoBytesWithByteArray_withJavaIoOutputStream_(data, stream);
}

jboolean AMStreamingUtils_readProtoBoolWithJavaIoInputStream_(JavaIoInputStream *stream) {
  AMStreamingUtils_init();
  return AMStreamingUtils_readByteWithJavaIoInputStream_(stream) != 0;
}

void AMStreamingUtils_writeProtoBoolWithBoolean_withJavaIoOutputStream_(jboolean v, JavaIoOutputStream *stream) {
  AMStreamingUtils_init();
  AMStreamingUtils_writeByteWithInt_withJavaIoOutputStream_(v ? 1 : 0, stream);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMStreamingUtils)
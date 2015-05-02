//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/crypto/bouncycastle/BouncyCastleProvider.java
//

#ifndef _BCBouncyCastleProvider_H_
#define _BCBouncyCastleProvider_H_

#include "J2ObjC_header.h"
#include "im/actor/model/CryptoProvider.h"

@class AMCryptoKeyPair;
@class IOSByteArray;
@protocol AMAesCipher;
@protocol AMRsaCipher;
@protocol AMRsaEncryptCipher;
@protocol BCRandomProvider;

@interface BCBouncyCastleProvider : NSObject < AMCryptoProvider >

#pragma mark Public

- (instancetype)initWithBCRandomProvider:(id<BCRandomProvider>)provider;

- (id<AMAesCipher>)createAESCBCPKS7CipherWithByteArray:(IOSByteArray *)key
                                         withByteArray:(IOSByteArray *)iv;

- (id<AMRsaEncryptCipher>)createRSAOAEPSHA1CipherWithByteArray:(IOSByteArray *)key;

- (id<AMRsaCipher>)createRSAOAEPSHA1CipherWithByteArray:(IOSByteArray *)publicKey
                                          withByteArray:(IOSByteArray *)privateKey;

- (AMCryptoKeyPair *)generateRSA1024KeyPair;

- (IOSByteArray *)MD5WithByteArray:(IOSByteArray *)data;

- (IOSByteArray *)randomBytesWithInt:(jint)length;

- (jint)randomIntWithInt:(jint)maxValue;

- (IOSByteArray *)SHA256WithByteArray:(IOSByteArray *)data;

- (IOSByteArray *)SHA512WithByteArray:(IOSByteArray *)data;

@end

J2OBJC_STATIC_INIT(BCBouncyCastleProvider)

FOUNDATION_EXPORT void BCBouncyCastleProvider_initWithBCRandomProvider_(BCBouncyCastleProvider *self, id<BCRandomProvider> provider);

FOUNDATION_EXPORT BCBouncyCastleProvider *new_BCBouncyCastleProvider_initWithBCRandomProvider_(id<BCRandomProvider> provider) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(BCBouncyCastleProvider)

typedef BCBouncyCastleProvider ImActorModelCryptoBouncycastleBouncyCastleProvider;

#endif // _BCBouncyCastleProvider_H_
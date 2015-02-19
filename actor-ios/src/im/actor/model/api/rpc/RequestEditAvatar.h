//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestEditAvatar.java
//

#ifndef _ImActorModelApiRpcRequestEditAvatar_H_
#define _ImActorModelApiRpcRequestEditAvatar_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiFileLocation;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestEditAvatar_HEADER 31

@interface ImActorModelApiRpcRequestEditAvatar : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestEditAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiFileLocation:(ImActorModelApiFileLocation *)fileLocation;

- (instancetype)init;

- (ImActorModelApiFileLocation *)getFileLocation;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestEditAvatar)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestEditAvatar *ImActorModelApiRpcRequestEditAvatar_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestEditAvatar, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestEditAvatar)

#endif // _ImActorModelApiRpcRequestEditAvatar_H_
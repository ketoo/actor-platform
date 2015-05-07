//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSendMessage.java
//

#ifndef _ImActorModelApiRpcRequestSendMessage_H_
#define _ImActorModelApiRpcRequestSendMessage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiMessage;
@class ImActorModelApiOutPeer;

#define ImActorModelApiRpcRequestSendMessage_HEADER 92

@interface ImActorModelApiRpcRequestSendMessage : ImActorModelNetworkParserRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                                      withLong:(jlong)rid
                    withImActorModelApiMessage:(ImActorModelApiMessage *)message;

+ (ImActorModelApiRpcRequestSendMessage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (ImActorModelApiMessage *)getMessage;

- (ImActorModelApiOutPeer *)getPeer;

- (jlong)getRid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestSendMessage)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestSendMessage, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendMessage *ImActorModelApiRpcRequestSendMessage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcRequestSendMessage_initWithImActorModelApiOutPeer_withLong_withImActorModelApiMessage_(ImActorModelApiRpcRequestSendMessage *self, ImActorModelApiOutPeer *peer, jlong rid, ImActorModelApiMessage *message);

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendMessage *new_ImActorModelApiRpcRequestSendMessage_initWithImActorModelApiOutPeer_withLong_withImActorModelApiMessage_(ImActorModelApiOutPeer *peer, jlong rid, ImActorModelApiMessage *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcRequestSendMessage_init(ImActorModelApiRpcRequestSendMessage *self);

FOUNDATION_EXPORT ImActorModelApiRpcRequestSendMessage *new_ImActorModelApiRpcRequestSendMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestSendMessage)

#endif // _ImActorModelApiRpcRequestSendMessage_H_
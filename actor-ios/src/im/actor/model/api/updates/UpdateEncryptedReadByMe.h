//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateEncryptedReadByMe.java
//

#ifndef _ImActorModelApiUpdatesUpdateEncryptedReadByMe_H_
#define _ImActorModelApiUpdatesUpdateEncryptedReadByMe_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateEncryptedReadByMe_HEADER 53

@interface ImActorModelApiUpdatesUpdateEncryptedReadByMe : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateEncryptedReadByMe *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)rid;

- (instancetype)init;

- (ImActorModelApiPeer *)getPeer;

- (jlong)getRid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateEncryptedReadByMe)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateEncryptedReadByMe *ImActorModelApiUpdatesUpdateEncryptedReadByMe_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateEncryptedReadByMe, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateEncryptedReadByMe)

#endif // _ImActorModelApiUpdatesUpdateEncryptedReadByMe_H_
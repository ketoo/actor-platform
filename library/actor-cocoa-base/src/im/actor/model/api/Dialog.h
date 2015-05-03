//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Dialog.java
//

#ifndef _ImActorModelApiDialog_H_
#define _ImActorModelApiDialog_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;
@class ImActorModelApiMessage;
@class ImActorModelApiMessageStateEnum;
@class ImActorModelApiPeer;

@interface ImActorModelApiDialog : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                    withInt:(jint)unreadCount
                                   withLong:(jlong)sortDate
                                    withInt:(jint)senderUid
                                   withLong:(jlong)rid
                                   withLong:(jlong)date
                 withImActorModelApiMessage:(ImActorModelApiMessage *)message
        withImActorModelApiMessageStateEnum:(ImActorModelApiMessageStateEnum *)state;

- (jlong)getDate;

- (ImActorModelApiMessage *)getMessage;

- (ImActorModelApiPeer *)getPeer;

- (jlong)getRid;

- (jint)getSenderUid;

- (jlong)getSortDate;

- (ImActorModelApiMessageStateEnum *)getState;

- (jint)getUnreadCount;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiDialog)

FOUNDATION_EXPORT void ImActorModelApiDialog_initWithImActorModelApiPeer_withInt_withLong_withInt_withLong_withLong_withImActorModelApiMessage_withImActorModelApiMessageStateEnum_(ImActorModelApiDialog *self, ImActorModelApiPeer *peer, jint unreadCount, jlong sortDate, jint senderUid, jlong rid, jlong date, ImActorModelApiMessage *message, ImActorModelApiMessageStateEnum *state);

FOUNDATION_EXPORT ImActorModelApiDialog *new_ImActorModelApiDialog_initWithImActorModelApiPeer_withInt_withLong_withInt_withLong_withLong_withImActorModelApiMessage_withImActorModelApiMessageStateEnum_(ImActorModelApiPeer *peer, jint unreadCount, jlong sortDate, jint senderUid, jlong rid, jlong date, ImActorModelApiMessage *message, ImActorModelApiMessageStateEnum *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiDialog_init(ImActorModelApiDialog *self);

FOUNDATION_EXPORT ImActorModelApiDialog *new_ImActorModelApiDialog_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiDialog)

#endif // _ImActorModelApiDialog_H_
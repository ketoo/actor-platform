//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/CreateConnectionCallback.java
//

#ifndef _AMCreateConnectionCallback_H_
#define _AMCreateConnectionCallback_H_

#include "J2ObjC_header.h"

@protocol AMConnection;

@protocol AMCreateConnectionCallback < NSObject, JavaObject >

- (void)onConnectionCreatedWithConnection:(id<AMConnection>)connection;

- (void)onConnectionCreateError;

@end

J2OBJC_EMPTY_STATIC_INIT(AMCreateConnectionCallback)

J2OBJC_TYPE_LITERAL_HEADER(AMCreateConnectionCallback)

#define ImActorModelNetworkCreateConnectionCallback AMCreateConnectionCallback

#endif // _AMCreateConnectionCallback_H_

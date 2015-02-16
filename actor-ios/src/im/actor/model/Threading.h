//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/Threading.java
//

#ifndef _AMThreading_H_
#define _AMThreading_H_

@class AMAtomicIntegerCompat;
@class AMAtomicLongCompat;
@class AMThreadLocalCompat;
@class DKActorDispatcher;
@class DKActorSystem;
@class DKThreadPriorityEnum;

#include "J2ObjC_header.h"

@protocol AMThreading < NSObject, JavaObject >

- (jlong)getActorTime;

- (jlong)getCurrentTime;

- (jint)getCoresCount;

- (AMAtomicIntegerCompat *)createAtomicInt:(jint)value;

- (AMAtomicLongCompat *)createAtomicLong:(jlong)value;

- (AMThreadLocalCompat *)createThreadLocal;

- (DKActorDispatcher *)createDispatcherWithNSString:(NSString *)name
                                            withInt:(jint)threadsCount
                           withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                  withDKActorSystem:(DKActorSystem *)actorSystem;

- (DKActorDispatcher *)createDefaultDispatcherWithNSString:(NSString *)name
                                  withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                         withDKActorSystem:(DKActorSystem *)system;

@end

J2OBJC_EMPTY_STATIC_INIT(AMThreading)

#define ImActorModelThreading AMThreading

J2OBJC_TYPE_LITERAL_HEADER(AMThreading)

#endif // _AMThreading_H_

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/log/Log.java
//

#ifndef _AMLog_H_
#define _AMLog_H_

#include "J2ObjC_header.h"

@class JavaLangThrowable;
@protocol AMLogProvider;

@interface AMLog : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)dWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)eWithNSString:(NSString *)tag
withJavaLangThrowable:(JavaLangThrowable *)throwable;

+ (id<AMLogProvider>)getLog;

+ (void)setLogWithAMLogProvider:(id<AMLogProvider>)log;

+ (void)vWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

+ (void)wWithNSString:(NSString *)tag
         withNSString:(NSString *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(AMLog)

FOUNDATION_EXPORT id<AMLogProvider> AMLog_getLog();

FOUNDATION_EXPORT void AMLog_setLogWithAMLogProvider_(id<AMLogProvider> log);

FOUNDATION_EXPORT void AMLog_wWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void AMLog_eWithNSString_withJavaLangThrowable_(NSString *tag, JavaLangThrowable *throwable);

FOUNDATION_EXPORT void AMLog_dWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void AMLog_vWithNSString_withNSString_(NSString *tag, NSString *message);

FOUNDATION_EXPORT void AMLog_init(AMLog *self);

FOUNDATION_EXPORT AMLog *new_AMLog_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMLog)

typedef AMLog ImActorModelLogLog;

#endif // _AMLog_H_

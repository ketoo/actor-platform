//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/i18n/I18nEngine.java
//

#ifndef _AMI18nEngine_H_
#define _AMI18nEngine_H_

#include "J2ObjC_header.h"

@class AMContentTypeEnum;
@class AMServiceContent;
@class AMSexEnum;
@class AMUserPresence;
@class IOSObjectArray;
@class ImActorModelModulesModules;
@protocol AMLocaleProvider;

@interface AMI18nEngine : NSObject

#pragma mark Public

- (instancetype)initWithAMLocaleProvider:(id<AMLocaleProvider>)provider
          withImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (NSString *)formatContentDialogTextWithInt:(jint)senderId
                       withAMContentTypeEnum:(AMContentTypeEnum *)contentType
                                withNSString:(NSString *)text
                                     withInt:(jint)relatedUid;

- (NSString *)formatDateWithLong:(jlong)date;

- (NSString *)formatDurationWithInt:(jint)duration;

- (NSString *)formatFastNameWithNSString:(NSString *)name;

- (NSString *)formatFileSizeWithInt:(jint)bytes;

- (NSString *)formatFullServiceMessageWithInt:(jint)senderId
                         withAMServiceContent:(AMServiceContent *)content;

- (NSString *)formatGroupMembersWithInt:(jint)count;

- (NSString *)formatGroupOnlineWithInt:(jint)count;

- (NSString *)formatMessagesWithAMMessageArray:(IOSObjectArray *)messages;

- (NSString *)formatPerformerNameWithInt:(jint)uid;

- (NSString *)formatPresenceWithAMUserPresence:(AMUserPresence *)value
                                 withAMSexEnum:(AMSexEnum *)sex;

- (NSString *)formatShortDateWithLong:(jlong)date;

- (NSString *)formatTimeWithLong:(jlong)date;

- (NSString *)formatTyping;

- (NSString *)formatTypingWithInt:(jint)count;

- (NSString *)formatTypingWithNSString:(NSString *)name;

- (NSString *)getSubjectNameWithInt:(jint)uid;

- (jboolean)isLargeDialogMessageWithAMContentTypeEnum:(AMContentTypeEnum *)contentType;

@end

J2OBJC_EMPTY_STATIC_INIT(AMI18nEngine)

FOUNDATION_EXPORT void AMI18nEngine_initWithAMLocaleProvider_withImActorModelModulesModules_(AMI18nEngine *self, id<AMLocaleProvider> provider, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT AMI18nEngine *new_AMI18nEngine_initWithAMLocaleProvider_withImActorModelModulesModules_(id<AMLocaleProvider> provider, ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMI18nEngine)

typedef AMI18nEngine ImActorModelI18nI18nEngine;

#endif // _AMI18nEngine_H_
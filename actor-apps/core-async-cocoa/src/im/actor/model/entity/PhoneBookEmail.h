//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/PhoneBookEmail.java
//

#ifndef _AMPhoneBookEmail_H_
#define _AMPhoneBookEmail_H_

#include "J2ObjC_header.h"

@interface AMPhoneBookEmail : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)id_
                withNSString:(NSString *)email;

- (NSString *)getEmail;

- (jlong)getId;

@end

J2OBJC_EMPTY_STATIC_INIT(AMPhoneBookEmail)

FOUNDATION_EXPORT void AMPhoneBookEmail_initWithLong_withNSString_(AMPhoneBookEmail *self, jlong id_, NSString *email);

FOUNDATION_EXPORT AMPhoneBookEmail *new_AMPhoneBookEmail_initWithLong_withNSString_(jlong id_, NSString *email) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMPhoneBookEmail)

typedef AMPhoneBookEmail ImActorModelEntityPhoneBookEmail;

#endif // _AMPhoneBookEmail_H_

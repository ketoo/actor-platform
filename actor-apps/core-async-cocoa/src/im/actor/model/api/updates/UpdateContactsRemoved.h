//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateContactsRemoved.java
//

#ifndef _APUpdateContactsRemoved_H_
#define _APUpdateContactsRemoved_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define APUpdateContactsRemoved_HEADER 41

@interface APUpdateContactsRemoved : APUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)uids;

+ (APUpdateContactsRemoved *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getUids;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUpdateContactsRemoved)

J2OBJC_STATIC_FIELD_GETTER(APUpdateContactsRemoved, HEADER, jint)

FOUNDATION_EXPORT APUpdateContactsRemoved *APUpdateContactsRemoved_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APUpdateContactsRemoved_initWithJavaUtilList_(APUpdateContactsRemoved *self, id<JavaUtilList> uids);

FOUNDATION_EXPORT APUpdateContactsRemoved *new_APUpdateContactsRemoved_initWithJavaUtilList_(id<JavaUtilList> uids) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUpdateContactsRemoved_init(APUpdateContactsRemoved *self);

FOUNDATION_EXPORT APUpdateContactsRemoved *new_APUpdateContactsRemoved_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUpdateContactsRemoved)

typedef APUpdateContactsRemoved ImActorModelApiUpdatesUpdateContactsRemoved;

#endif // _APUpdateContactsRemoved_H_

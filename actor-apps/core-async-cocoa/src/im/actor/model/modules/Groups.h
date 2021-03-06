//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/Groups.java
//

#ifndef _ImActorModelModulesGroups_H_
#define _ImActorModelModulesGroups_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@class AMGroupAvatarVM;
@class AMMVVMCollection;
@class IOSIntArray;
@class ImActorModelModulesModules;
@protocol AMCommand;
@protocol DKKeyValueEngine;

@interface ImActorModelModulesGroups : ImActorModelModulesBaseModule

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (id<AMCommand>)addMemberToGroupWithInt:(jint)gid
                                 withInt:(jint)uid;

- (void)changeAvatarWithInt:(jint)gid
               withNSString:(NSString *)descriptor;

- (id<AMCommand>)createGroupWithNSString:(NSString *)title
                            withNSString:(NSString *)avatarDescriptor
                            withIntArray:(IOSIntArray *)uids;

- (id<AMCommand>)editTitleWithInt:(jint)gid
                     withNSString:(NSString *)name;

- (AMGroupAvatarVM *)getAvatarVMWithInt:(jint)gid;

- (id<DKKeyValueEngine>)getGroups;

- (AMMVVMCollection *)getGroupsCollection;

- (id<AMCommand>)joinGroupViaLinkWithNSString:(NSString *)url;

- (id<AMCommand>)joinPublicGroupWithInt:(jint)gid
                               withLong:(jlong)accessHash;

- (id<AMCommand>)kickMemberWithInt:(jint)gid
                           withInt:(jint)uid;

- (id<AMCommand>)leaveGroupWithInt:(jint)gid;

- (id<AMCommand>)listPublicGroups;

- (void)removeAvatarWithInt:(jint)gid;

- (id<AMCommand>)requestIntegrationTokenWithInt:(jint)gid;

- (id<AMCommand>)requestInviteLinkWithInt:(jint)gid;

- (id<AMCommand>)requestRevokeLinkWithInt:(jint)gid;

- (void)resetModule;

- (id<AMCommand>)revokeIntegrationTokenWithInt:(jint)gid;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups)

FOUNDATION_EXPORT void ImActorModelModulesGroups_initWithImActorModelModulesModules_(ImActorModelModulesGroups *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesGroups *new_ImActorModelModulesGroups_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups)

#endif // _ImActorModelModulesGroups_H_

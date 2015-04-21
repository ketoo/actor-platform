//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Contacts.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Contacts.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/StorageProvider.h"
#include "im/actor/model/api/base/SeqUpdate.h"
#include "im/actor/model/api/rpc/RequestAddContact.h"
#include "im/actor/model/api/rpc/RequestRemoveContact.h"
#include "im/actor/model/api/rpc/RequestSearchContacts.h"
#include "im/actor/model/api/rpc/ResponseSearchContacts.h"
#include "im/actor/model/api/rpc/ResponseSeq.h"
#include "im/actor/model/api/updates/UpdateContactsAdded.h"
#include "im/actor/model/api/updates/UpdateContactsRemoved.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/concurrency/CommandCallback.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/engine/KeyValueEngine.h"
#include "im/actor/model/droidkit/engine/ListEngine.h"
#include "im/actor/model/droidkit/engine/ListStorage.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/contacts/BookImportActor.h"
#include "im/actor/model/modules/contacts/ContactsSyncActor.h"
#include "im/actor/model/modules/updates/internal/UsersFounded.h"
#include "im/actor/model/network/RpcException.h"
#include "im/actor/model/network/RpcInternalException.h"
#include "im/actor/model/viewmodel/UserVM.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelModulesContacts () {
 @public
  id<DKListEngine> contacts_;
  DKActorRef *bookImportActor_;
  DKActorRef *contactSyncActor_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts, contacts_, id<DKListEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts, bookImportActor_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts, contactSyncActor_, DKActorRef *)

@interface ImActorModelModulesContacts_$1 () {
 @public
  ImActorModelModulesContacts *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$1, this$0_, ImActorModelModulesContacts *)

@interface ImActorModelModulesContacts_$2 () {
 @public
  ImActorModelModulesContacts *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$2, this$0_, ImActorModelModulesContacts *)

@interface ImActorModelModulesContacts_$3 () {
 @public
  ImActorModelModulesContacts *this$0_;
  NSString *val$query_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3, this$0_, ImActorModelModulesContacts *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3, val$query_, NSString *)

@interface ImActorModelModulesContacts_$3_$1 () {
 @public
  ImActorModelModulesContacts_$3 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3_$1, this$0_, ImActorModelModulesContacts_$3 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$3_$1_$1 () {
 @public
  ImActorModelModulesContacts_$3_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3_$1_$1, this$0_, ImActorModelModulesContacts_$3_$1 *)

@interface ImActorModelModulesContacts_$3_$1_$2 () {
 @public
  ImActorModelModulesContacts_$3_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$3_$1_$2, this$0_, ImActorModelModulesContacts_$3_$1 *)

@interface ImActorModelModulesContacts_$4 () {
 @public
  ImActorModelModulesContacts *this$0_;
  jint val$uid_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4, this$0_, ImActorModelModulesContacts *)

@interface ImActorModelModulesContacts_$4_$1 () {
 @public
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$4_$2 () {
 @public
  ImActorModelModulesContacts_$4 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$2, this$0_, ImActorModelModulesContacts_$4 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$2, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$4_$2_$1 () {
 @public
  ImActorModelModulesContacts_$4_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$2_$1, this$0_, ImActorModelModulesContacts_$4_$2 *)

@interface ImActorModelModulesContacts_$4_$2_$2 () {
 @public
  ImActorModelModulesContacts_$4_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$4_$2_$2, this$0_, ImActorModelModulesContacts_$4_$2 *)

@interface ImActorModelModulesContacts_$5 () {
 @public
  ImActorModelModulesContacts *this$0_;
  jint val$uid_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5, this$0_, ImActorModelModulesContacts *)

@interface ImActorModelModulesContacts_$5_$1 () {
 @public
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$1, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$5_$2 () {
 @public
  ImActorModelModulesContacts_$5 *this$0_;
  id<AMCommandCallback> val$callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$2, this$0_, ImActorModelModulesContacts_$5 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$2, val$callback_, id<AMCommandCallback>)

@interface ImActorModelModulesContacts_$5_$2_$1 () {
 @public
  ImActorModelModulesContacts_$5_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$2_$1, this$0_, ImActorModelModulesContacts_$5_$2 *)

@interface ImActorModelModulesContacts_$5_$2_$2 () {
 @public
  ImActorModelModulesContacts_$5_$2 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesContacts_$5_$2_$2, this$0_, ImActorModelModulesContacts_$5_$2 *)


#line 33
@implementation ImActorModelModulesContacts


#line 39
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self =
#line 40
  [super initWithImActorModelModulesModules:modules]) {
    
#line 42
    contacts_ = [((id<AMStorageProvider>) nil_chk([((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules)) getConfiguration])) getStorageProvider])) createContactsListWithDKListStorage:
#line 43
    [((id<AMStorageProvider>) nil_chk([((AMConfiguration *) nil_chk([modules getConfiguration])) getStorageProvider])) createList:ImActorModelModulesBaseModule_get_STORAGE_CONTACTS_()]];
  }
  return self;
}


#line 46
- (void)run {
  
#line 47
  bookImportActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesContactsBookImportActor_class_(), [[ImActorModelModulesContacts_$1 alloc] initWithImActorModelModulesContacts:self]) withNSString:
#line 52
  @"actor/book_import"];
  contactSyncActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesContactsContactsSyncActor_class_(), [[ImActorModelModulesContacts_$2 alloc] initWithImActorModelModulesContacts:self]) withNSString:
#line 58
  @"actor/contacts_sync"];
}


#line 61
- (id<DKListEngine>)getContacts {
  
#line 62
  return contacts_;
}


#line 65
- (void)onPhoneBookChanged {
  
#line 66
  [((DKActorRef *) nil_chk(bookImportActor_)) sendWithId:[[ImActorModelModulesContactsBookImportActor_PerformSync alloc] init]];
}


#line 69
- (DKActorRef *)getContactSyncActor {
  
#line 70
  return contactSyncActor_;
}


#line 73
- (void)markContactWithInt:(jint)uid {
  
#line 74
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBool:JreStrcat("$I", @"contact_", uid) withValue:YES];
}


#line 77
- (void)markNonContactWithInt:(jint)uid {
  
#line 78
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBool:JreStrcat("$I", @"contact_", uid) withValue:NO];
}


#line 81
- (jboolean)isUserContactWithInt:(jint)uid {
  
#line 82
  return [((id<DKPreferencesStorage>) nil_chk([self preferences])) getBool:JreStrcat("$I", @"contact_", uid) withDefault:NO];
}


#line 85
- (id<AMCommand>)findUsersWithNSString:(NSString *)query {
  
#line 86
  return [[ImActorModelModulesContacts_$3 alloc] initWithImActorModelModulesContacts:self withNSString:query];
}


#line 120
- (id<AMCommand>)addContactWithInt:(jint)uid {
  
#line 121
  return [[ImActorModelModulesContacts_$4 alloc] initWithImActorModelModulesContacts:self withInt:uid];
}


#line 165
- (id<AMCommand>)removeContactWithInt:(jint)uid {
  
#line 166
  return [[ImActorModelModulesContacts_$5 alloc] initWithImActorModelModulesContacts:self withInt:uid];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts *)other {
  [super copyAllFieldsTo:other];
  other->contacts_ = contacts_;
  other->bookImportActor_ = bookImportActor_;
  other->contactSyncActor_ = contactSyncActor_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts)

@implementation ImActorModelModulesContacts_$1


#line 49
- (ImActorModelModulesContactsBookImportActor *)create {
  
#line 50
  return [[ImActorModelModulesContactsBookImportActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesContacts:(ImActorModelModulesContacts *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$1)

@implementation ImActorModelModulesContacts_$2


#line 55
- (ImActorModelModulesContactsContactsSyncActor *)create {
  
#line 56
  return [[ImActorModelModulesContactsContactsSyncActor alloc] initWithImActorModelModulesModules:[this$0_ modules]];
}

- (instancetype)initWithImActorModelModulesContacts:(ImActorModelModulesContacts *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$2)

@implementation ImActorModelModulesContacts_$3


#line 88
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 89
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSearchContacts alloc] initWithNSString:val$query_] withAMRpcCallback:[[ImActorModelModulesContacts_$3_$1 alloc] initWithImActorModelModulesContacts_$3:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesContacts:(ImActorModelModulesContacts *)outer$
                                       withNSString:(NSString *)capture$0 {
  this$0_ = outer$;
  val$query_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$3 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$query_ = val$query_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$3)

@implementation ImActorModelModulesContacts_$3_$1


#line 91
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSearchContacts *)response {
  
#line 92
  if ([((id<JavaUtilList>) nil_chk([((ImActorModelApiRpcResponseSearchContacts *) nil_chk(response)) getUsers])) size] == 0) {
    [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$3_$1_$1 alloc] initWithImActorModelModulesContacts_$3_$1:self]];
    
#line 99
    return;
  }
  
#line 102
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:[[ImActorModelModulesUpdatesInternalUsersFounded alloc] initWithJavaUtilList:[response getUsers] withAMCommandCallback:val$callback_]];
}


#line 106
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 107
  [((AMRpcException *) nil_chk(e)) printStackTrace];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$3_$1_$2 alloc] initWithImActorModelModulesContacts_$3_$1:self]];
}

- (instancetype)initWithImActorModelModulesContacts_$3:(ImActorModelModulesContacts_$3 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$3_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$3_$1)

@implementation ImActorModelModulesContacts_$3_$1_$1


#line 95
- (void)run {
  
#line 96
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:[IOSObjectArray newArrayWithLength:0 type:AMUserVM_class_()]];
}

- (instancetype)initWithImActorModelModulesContacts_$3_$1:(ImActorModelModulesContacts_$3_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$3_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$3_$1_$1)

@implementation ImActorModelModulesContacts_$3_$1_$2


#line 110
- (void)run {
  
#line 111
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:[IOSObjectArray newArrayWithLength:0 type:AMUserVM_class_()]];
}

- (instancetype)initWithImActorModelModulesContacts_$3_$1:(ImActorModelModulesContacts_$3_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$3_$1_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$3_$1_$2)

@implementation ImActorModelModulesContacts_$4


#line 123
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 124
  AMUser *user = [((id<DKKeyValueEngine>) nil_chk([this$0_ users])) getValueWithLong:val$uid_];
  if (user == nil) {
    [this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$4_$1 alloc] initWithAMCommandCallback:callback]];
    
#line 132
    return;
  }
  
#line 135
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestAddContact alloc] initWithInt:val$uid_ withLong:[((AMUser *) nil_chk(user)) getAccessHash]] withAMRpcCallback:[[ImActorModelModulesContacts_$4_$2 alloc] initWithImActorModelModulesContacts_$4:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesContacts:(ImActorModelModulesContacts *)outer$
                                            withInt:(jint)capture$0 {
  this$0_ = outer$;
  val$uid_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$uid_ = val$uid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4)

@implementation ImActorModelModulesContacts_$4_$1


#line 128
- (void)run {
  
#line 129
  [((id<AMCommandCallback>) nil_chk(val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4_$1)

@implementation ImActorModelModulesContacts_$4_$2


#line 137
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeq *)response {
  
#line 138
  JavaUtilArrayList *uids = [[JavaUtilArrayList alloc] init];
  [uids addWithId:JavaLangInteger_valueOfWithInt_(this$0_->val$uid_)];
  ImActorModelApiBaseSeqUpdate *update = [[ImActorModelApiBaseSeqUpdate alloc] initWithInt:[((ImActorModelApiRpcResponseSeq *) nil_chk(response)) getSeq] withByteArray:[response getState] withInt:
#line 141
  ImActorModelApiUpdatesUpdateContactsAdded_HEADER withByteArray:[((ImActorModelApiUpdatesUpdateContactsAdded *) [[ImActorModelApiUpdatesUpdateContactsAdded alloc] initWithJavaUtilList:uids]) toByteArray]];
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:update];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$4_$2_$1 alloc] initWithImActorModelModulesContacts_$4_$2:self]];
}


#line 152
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 153
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$4_$2_$2 alloc] initWithImActorModelModulesContacts_$4_$2:self]];
}

- (instancetype)initWithImActorModelModulesContacts_$4:(ImActorModelModulesContacts_$4 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4_$2)

@implementation ImActorModelModulesContacts_$4_$2_$1


#line 145
- (void)run {
  
#line 146
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesContacts_$4_$2:(ImActorModelModulesContacts_$4_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4_$2_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4_$2_$1)

@implementation ImActorModelModulesContacts_$4_$2_$2


#line 155
- (void)run {
  
#line 156
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithImActorModelModulesContacts_$4_$2:(ImActorModelModulesContacts_$4_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$4_$2_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$4_$2_$2)

@implementation ImActorModelModulesContacts_$5


#line 168
- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  
#line 169
  AMUser *user = [((id<DKKeyValueEngine>) nil_chk([this$0_ users])) getValueWithLong:val$uid_];
  if (user == nil) {
    [this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$5_$1 alloc] initWithAMCommandCallback:callback]];
    
#line 177
    return;
  }
  
#line 180
  [this$0_ requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestRemoveContact alloc] initWithInt:val$uid_ withLong:[((AMUser *) nil_chk(user)) getAccessHash]] withAMRpcCallback:[[ImActorModelModulesContacts_$5_$2 alloc] initWithImActorModelModulesContacts_$5:self withAMCommandCallback:callback]];
}

- (instancetype)initWithImActorModelModulesContacts:(ImActorModelModulesContacts *)outer$
                                            withInt:(jint)capture$0 {
  this$0_ = outer$;
  val$uid_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$uid_ = val$uid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5)

@implementation ImActorModelModulesContacts_$5_$1


#line 173
- (void)run {
  
#line 174
  [((id<AMCommandCallback>) nil_chk(val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5_$1)

@implementation ImActorModelModulesContacts_$5_$2


#line 182
- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeq *)response {
  
#line 183
  JavaUtilArrayList *uids = [[JavaUtilArrayList alloc] init];
  [uids addWithId:JavaLangInteger_valueOfWithInt_(this$0_->val$uid_)];
  ImActorModelApiBaseSeqUpdate *update = [[ImActorModelApiBaseSeqUpdate alloc] initWithInt:[((ImActorModelApiRpcResponseSeq *) nil_chk(response)) getSeq] withByteArray:[response getState] withInt:
#line 186
  ImActorModelApiUpdatesUpdateContactsRemoved_HEADER withByteArray:[((ImActorModelApiUpdatesUpdateContactsRemoved *) [[ImActorModelApiUpdatesUpdateContactsRemoved alloc] initWithJavaUtilList:uids]) toByteArray]];
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:update];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$5_$2_$1 alloc] initWithImActorModelModulesContacts_$5_$2:self]];
}


#line 197
- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  
#line 198
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:[[ImActorModelModulesContacts_$5_$2_$2 alloc] initWithImActorModelModulesContacts_$5_$2:self]];
}

- (instancetype)initWithImActorModelModulesContacts_$5:(ImActorModelModulesContacts_$5 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  this$0_ = outer$;
  val$callback_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$callback_ = val$callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5_$2)

@implementation ImActorModelModulesContacts_$5_$2_$1


#line 190
- (void)run {
  
#line 191
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesContacts_$5_$2:(ImActorModelModulesContacts_$5_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5_$2_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5_$2_$1)

@implementation ImActorModelModulesContacts_$5_$2_$2


#line 200
- (void)run {
  
#line 201
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:[[AMRpcInternalException alloc] init]];
}

- (instancetype)initWithImActorModelModulesContacts_$5_$2:(ImActorModelModulesContacts_$5_$2 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesContacts_$5_$2_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesContacts_$5_$2_$2)
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Presence.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Presence.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Presence.h"
#include "im/actor/model/modules/presence/OwnPresenceActor.h"
#include "im/actor/model/modules/presence/PresenceActor.h"

@interface ImActorModelModulesPresence () {
 @public
  DKActorRef *myPresence_;
  DKActorRef *presence_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresence, myPresence_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesPresence, presence_, DKActorRef *)

@interface ImActorModelModulesPresence_$1 () {
 @public
  ImActorModelModulesModules *val$modules_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresence_$1, val$modules_, ImActorModelModulesModules *)


#line 15
@implementation ImActorModelModulesPresence


#line 19
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self =
#line 20
  [super initWithImActorModelModulesModules:modules]) {
    
#line 21
    self->myPresence_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesPresenceOwnPresenceActor_class_(), [[ImActorModelModulesPresence_$1 alloc] initWithImActorModelModulesModules:modules]) withNSString:
#line 26
    @"actor/presence/own"];
    
#line 27
    presence_ = ImActorModelModulesPresencePresenceActor_getWithImActorModelModulesModules_(modules);
  }
  return self;
}


#line 30
- (void)run {
  
#line 31
  [((DKActorRef *) nil_chk(myPresence_)) sendWithId:[[ImActorModelModulesPresenceOwnPresenceActor_OnAppVisible alloc] init]];
}


#line 34
- (void)onAppVisible {
  
#line 35
  [((DKActorRef *) nil_chk(myPresence_)) sendWithId:[[ImActorModelModulesPresenceOwnPresenceActor_OnAppVisible alloc] init]];
}


#line 38
- (void)onAppHidden {
  
#line 39
  [((DKActorRef *) nil_chk(myPresence_)) sendWithId:[[ImActorModelModulesPresenceOwnPresenceActor_OnAppHidden alloc] init]];
}


#line 42
- (void)subscribeWithAMPeer:(AMPeer *)peer {
  
#line 43
  [((DKActorRef *) nil_chk(presence_)) sendWithId:[[ImActorModelModulesPresencePresenceActor_Subscribe alloc] initWithAMPeer:peer]];
}


#line 46
- (void)onNewSessionCreated {
  
#line 47
  [((DKActorRef *) nil_chk(presence_)) sendWithId:[[ImActorModelModulesPresencePresenceActor_SessionCreated alloc] init]];
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresence *)other {
  [super copyAllFieldsTo:other];
  other->myPresence_ = myPresence_;
  other->presence_ = presence_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresence)

@implementation ImActorModelModulesPresence_$1


#line 23
- (ImActorModelModulesPresenceOwnPresenceActor *)create {
  
#line 24
  return [[ImActorModelModulesPresenceOwnPresenceActor alloc] initWithImActorModelModulesModules:val$modules_];
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0 {
  val$modules_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresence_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$modules_ = val$modules_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresence_$1)
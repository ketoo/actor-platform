//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/modules/messages/CursorActor.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/engine/SyncKeyValue.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/messages/CursorActor.h"
#include "im/actor/model/modules/messages/entity/PlainCursor.h"
#include "im/actor/model/modules/messages/entity/PlainCursorsStorage.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/util/Collection.h"
#include "java/util/HashSet.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface ImActorModelModulesMessagesCursorActor () {
 @public
  ImActorModelModulesMessagesEntityPlainCursorsStorage *plainCursorsStorage_;
  JavaUtilHashSet *inProgress_;
  jlong cursorId_;
  DKSyncKeyValue *keyValue_;
}

- (void)saveCursorState;

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorActor, plainCursorsStorage_, ImActorModelModulesMessagesEntityPlainCursorsStorage *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorActor, inProgress_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorActor, keyValue_, DKSyncKeyValue *)

__attribute__((unused)) static void ImActorModelModulesMessagesCursorActor_onMovedWithAMPeer_withLong_(ImActorModelModulesMessagesCursorActor *self, AMPeer *peer, jlong date);

__attribute__((unused)) static void ImActorModelModulesMessagesCursorActor_saveCursorState(ImActorModelModulesMessagesCursorActor *self);

@interface ImActorModelModulesMessagesCursorActor_OnCompleted : NSObject {
 @public
  AMPeer *peer_;
  jlong date_;
}

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)date;

- (AMPeer *)getPeer;

- (jlong)getDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesCursorActor_OnCompleted)

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesCursorActor_OnCompleted, peer_, AMPeer *)

__attribute__((unused)) static void ImActorModelModulesMessagesCursorActor_OnCompleted_initWithAMPeer_withLong_(ImActorModelModulesMessagesCursorActor_OnCompleted *self, AMPeer *peer, jlong date);

__attribute__((unused)) static ImActorModelModulesMessagesCursorActor_OnCompleted *new_ImActorModelModulesMessagesCursorActor_OnCompleted_initWithAMPeer_withLong_(AMPeer *peer, jlong date) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesCursorActor_OnCompleted)

@implementation ImActorModelModulesMessagesCursorActor

- (instancetype)initWithLong:(jlong)cursorId
withImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesMessagesCursorActor_initWithLong_withImActorModelModulesModules_(self, cursorId, messenger);
  return self;
}

- (void)preStart {
  [super preStart];
  plainCursorsStorage_ = new_ImActorModelModulesMessagesEntityPlainCursorsStorage_init();
  IOSByteArray *data = [((DKSyncKeyValue *) nil_chk(keyValue_)) getWithLong:cursorId_];
  if (data != nil) {
    @try {
      plainCursorsStorage_ = ImActorModelModulesMessagesEntityPlainCursorsStorage_fromBytesWithByteArray_(data);
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
  }
  for (ImActorModelModulesMessagesEntityPlainCursor * __strong cursor in nil_chk([((ImActorModelModulesMessagesEntityPlainCursorsStorage *) nil_chk(plainCursorsStorage_)) getAllCursors])) {
    if ([((ImActorModelModulesMessagesEntityPlainCursor *) nil_chk(cursor)) getSortDate] < [cursor getPendingSortDate]) {
      [((JavaUtilHashSet *) nil_chk(inProgress_)) addWithId:[cursor getPeer]];
      [self performWithAMPeer:[cursor getPeer] withLong:[cursor getPendingSortDate]];
    }
  }
}

- (void)moveCursorWithAMPeer:(AMPeer *)peer
                    withLong:(jlong)date {
  ImActorModelModulesMessagesEntityPlainCursor *cursor = [((ImActorModelModulesMessagesEntityPlainCursorsStorage *) nil_chk(plainCursorsStorage_)) getCursorWithAMPeer:peer];
  if (date <= [((ImActorModelModulesMessagesEntityPlainCursor *) nil_chk(cursor)) getSortDate]) {
    return;
  }
  if (date <= [cursor getPendingSortDate]) {
    return;
  }
  date = JavaLangMath_maxWithLong_withLong_([cursor getPendingSortDate], date);
  [plainCursorsStorage_ putCursorWithImActorModelModulesMessagesEntityPlainCursor:[cursor changePendingSortDateWithLong:date]];
  ImActorModelModulesMessagesCursorActor_saveCursorState(self);
  if ([((JavaUtilHashSet *) nil_chk(inProgress_)) containsWithId:peer]) {
    return;
  }
  [inProgress_ addWithId:peer];
  [self performWithAMPeer:peer withLong:date];
}

- (void)onMovedWithAMPeer:(AMPeer *)peer
                 withLong:(jlong)date {
  ImActorModelModulesMessagesCursorActor_onMovedWithAMPeer_withLong_(self, peer, date);
}

- (void)onCompletedWithAMPeer:(AMPeer *)peer
                     withLong:(jlong)date {
  [((DKActorRef *) nil_chk([self self__])) sendWithId:new_ImActorModelModulesMessagesCursorActor_OnCompleted_initWithAMPeer_withLong_(peer, date)];
}

- (void)onErrorWithAMPeer:(AMPeer *)peer
                 withLong:(jlong)date {
}

- (void)saveCursorState {
  ImActorModelModulesMessagesCursorActor_saveCursorState(self);
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesMessagesCursorActor_OnCompleted class]]) {
    ImActorModelModulesMessagesCursorActor_OnCompleted *completed = (ImActorModelModulesMessagesCursorActor_OnCompleted *) check_class_cast(message, [ImActorModelModulesMessagesCursorActor_OnCompleted class]);
    ImActorModelModulesMessagesCursorActor_onMovedWithAMPeer_withLong_(self, [((ImActorModelModulesMessagesCursorActor_OnCompleted *) nil_chk(completed)) getPeer], [completed getDate]);
  }
  else {
    [self dropWithId:message];
  }
}

@end

void ImActorModelModulesMessagesCursorActor_initWithLong_withImActorModelModulesModules_(ImActorModelModulesMessagesCursorActor *self, jlong cursorId, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(self, messenger);
  self->inProgress_ = new_JavaUtilHashSet_init();
  self->cursorId_ = cursorId;
  self->keyValue_ = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(messenger)) getMessagesModule])) getCursorStorage];
}

void ImActorModelModulesMessagesCursorActor_onMovedWithAMPeer_withLong_(ImActorModelModulesMessagesCursorActor *self, AMPeer *peer, jlong date) {
  [((JavaUtilHashSet *) nil_chk(self->inProgress_)) removeWithId:peer];
  ImActorModelModulesMessagesEntityPlainCursor *cursor = [((ImActorModelModulesMessagesEntityPlainCursorsStorage *) nil_chk(self->plainCursorsStorage_)) getCursorWithAMPeer:peer];
  cursor = [cursor changeSortDateWithLong:JavaLangMath_maxWithLong_withLong_(date, [((ImActorModelModulesMessagesEntityPlainCursor *) nil_chk(cursor)) getSortDate])];
  [self->plainCursorsStorage_ putCursorWithImActorModelModulesMessagesEntityPlainCursor:cursor];
  ImActorModelModulesMessagesCursorActor_saveCursorState(self);
  if ([((ImActorModelModulesMessagesEntityPlainCursor *) nil_chk(cursor)) getSortDate] < [cursor getPendingSortDate]) {
    [self->inProgress_ addWithId:peer];
    [self performWithAMPeer:peer withLong:[cursor getPendingSortDate]];
  }
}

void ImActorModelModulesMessagesCursorActor_saveCursorState(ImActorModelModulesMessagesCursorActor *self) {
  [((DKSyncKeyValue *) nil_chk(self->keyValue_)) putWithLong:self->cursorId_ withByteArray:[((ImActorModelModulesMessagesEntityPlainCursorsStorage *) nil_chk(self->plainCursorsStorage_)) toByteArray]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesCursorActor)

@implementation ImActorModelModulesMessagesCursorActor_OnCompleted

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)date {
  ImActorModelModulesMessagesCursorActor_OnCompleted_initWithAMPeer_withLong_(self, peer, date);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (jlong)getDate {
  return date_;
}

@end

void ImActorModelModulesMessagesCursorActor_OnCompleted_initWithAMPeer_withLong_(ImActorModelModulesMessagesCursorActor_OnCompleted *self, AMPeer *peer, jlong date) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->date_ = date;
}

ImActorModelModulesMessagesCursorActor_OnCompleted *new_ImActorModelModulesMessagesCursorActor_OnCompleted_initWithAMPeer_withLong_(AMPeer *peer, jlong date) {
  ImActorModelModulesMessagesCursorActor_OnCompleted *self = [ImActorModelModulesMessagesCursorActor_OnCompleted alloc];
  ImActorModelModulesMessagesCursorActor_OnCompleted_initWithAMPeer_withLong_(self, peer, date);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesCursorActor_OnCompleted)
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/updates/internal/DialogHistoryLoaded.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/model/modules/updates/internal/DialogHistoryLoaded.h"

@interface ImActorModelModulesUpdatesInternalDialogHistoryLoaded () {
 @public
  ImActorModelApiRpcResponseLoadDialogs *dialogs_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesInternalDialogHistoryLoaded, dialogs_, ImActorModelApiRpcResponseLoadDialogs *)

@implementation ImActorModelModulesUpdatesInternalDialogHistoryLoaded

- (instancetype)initWithImActorModelApiRpcResponseLoadDialogs:(ImActorModelApiRpcResponseLoadDialogs *)dialogs {
  if (self = [super init]) {
    self->dialogs_ = dialogs;
  }
  return self;
}

- (ImActorModelApiRpcResponseLoadDialogs *)getDialogs {
  return dialogs_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesUpdatesInternalDialogHistoryLoaded *)other {
  [super copyAllFieldsTo:other];
  other->dialogs_ = dialogs_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithImActorModelApiRpcResponseLoadDialogs:", "DialogHistoryLoaded", NULL, 0x1, NULL },
    { "getDialogs", NULL, "Lim.actor.model.api.rpc.ResponseLoadDialogs;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "dialogs_", NULL, 0x2, "Lim.actor.model.api.rpc.ResponseLoadDialogs;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelModulesUpdatesInternalDialogHistoryLoaded = { 1, "DialogHistoryLoaded", "im.actor.model.modules.updates.internal", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ImActorModelModulesUpdatesInternalDialogHistoryLoaded;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesInternalDialogHistoryLoaded)
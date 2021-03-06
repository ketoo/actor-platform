//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateGroupUserInvited.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupUserInvited.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateGroupUserInvited () {
 @public
  jint groupId_;
  jlong rid_;
  jint uid_;
  jint inviterUid_;
  jlong date_;
}

@end

@implementation APUpdateGroupUserInvited

+ (APUpdateGroupUserInvited *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateGroupUserInvited_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date {
  APUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(self, groupId, rid, uid, inviterUid, date);
  return self;
}

- (instancetype)init {
  APUpdateGroupUserInvited_init(self);
  return self;
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getUid {
  return self->uid_;
}

- (jint)getInviterUid {
  return self->inviterUid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:5];
  self->uid_ = [values getIntWithInt:2];
  self->inviterUid_ = [values getIntWithInt:3];
  self->date_ = [values getLongWithInt:4];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:5 withLong:self->rid_];
  [writer writeIntWithInt:2 withInt:self->uid_];
  [writer writeIntWithInt:3 withInt:self->inviterUid_];
  [writer writeLongWithInt:4 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"update GroupUserInvited{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", inviterUid=", self->inviterUid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateGroupUserInvited_HEADER;
}

@end

APUpdateGroupUserInvited *APUpdateGroupUserInvited_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateGroupUserInvited_initialize();
  return ((APUpdateGroupUserInvited *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateGroupUserInvited_init(), data));
}

void APUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(APUpdateGroupUserInvited *self, jint groupId, jlong rid, jint uid, jint inviterUid, jlong date) {
  (void) APUpdate_init(self);
  self->groupId_ = groupId;
  self->rid_ = rid;
  self->uid_ = uid;
  self->inviterUid_ = inviterUid;
  self->date_ = date;
}

APUpdateGroupUserInvited *new_APUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(jint groupId, jlong rid, jint uid, jint inviterUid, jlong date) {
  APUpdateGroupUserInvited *self = [APUpdateGroupUserInvited alloc];
  APUpdateGroupUserInvited_initWithInt_withLong_withInt_withInt_withLong_(self, groupId, rid, uid, inviterUid, date);
  return self;
}

void APUpdateGroupUserInvited_init(APUpdateGroupUserInvited *self) {
  (void) APUpdate_init(self);
}

APUpdateGroupUserInvited *new_APUpdateGroupUserInvited_init() {
  APUpdateGroupUserInvited *self = [APUpdateGroupUserInvited alloc];
  APUpdateGroupUserInvited_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateGroupUserInvited)

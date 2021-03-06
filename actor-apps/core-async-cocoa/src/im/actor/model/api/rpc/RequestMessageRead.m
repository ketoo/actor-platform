//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestMessageRead.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestMessageRead.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestMessageRead () {
 @public
  APOutPeer *peer_;
  jlong date_;
}

@end

J2OBJC_FIELD_SETTER(APRequestMessageRead, peer_, APOutPeer *)

@implementation APRequestMessageRead

+ (APRequestMessageRead *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestMessageRead_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPOutPeer:(APOutPeer *)peer
                         withLong:(jlong)date {
  APRequestMessageRead_initWithAPOutPeer_withLong_(self, peer, date);
  return self;
}

- (instancetype)init {
  APRequestMessageRead_init(self);
  return self;
}

- (APOutPeer *)getPeer {
  return self->peer_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APOutPeer_init()];
  self->date_ = [values getLongWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeLongWithInt:3 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"rpc MessageRead{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestMessageRead_HEADER;
}

@end

APRequestMessageRead *APRequestMessageRead_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestMessageRead_initialize();
  return ((APRequestMessageRead *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestMessageRead_init(), data));
}

void APRequestMessageRead_initWithAPOutPeer_withLong_(APRequestMessageRead *self, APOutPeer *peer, jlong date) {
  (void) APRequest_init(self);
  self->peer_ = peer;
  self->date_ = date;
}

APRequestMessageRead *new_APRequestMessageRead_initWithAPOutPeer_withLong_(APOutPeer *peer, jlong date) {
  APRequestMessageRead *self = [APRequestMessageRead alloc];
  APRequestMessageRead_initWithAPOutPeer_withLong_(self, peer, date);
  return self;
}

void APRequestMessageRead_init(APRequestMessageRead *self) {
  (void) APRequest_init(self);
}

APRequestMessageRead *new_APRequestMessageRead_init() {
  APRequestMessageRead *self = [APRequestMessageRead alloc];
  APRequestMessageRead_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestMessageRead)

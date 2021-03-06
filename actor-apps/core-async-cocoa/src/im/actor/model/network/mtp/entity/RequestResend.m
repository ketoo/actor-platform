//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/RequestResend.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/RequestResend.h"
#include "java/io/IOException.h"

@interface MTRequestResend () {
 @public
  jlong messageId_;
}

@end

@implementation MTRequestResend

- (instancetype)initWithLong:(jlong)messageId {
  MTRequestResend_initWithLong_(self, messageId);
  return self;
}

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTRequestResend_initWithBSDataInput_(self, stream);
  return self;
}

- (jlong)getMessageId {
  return messageId_;
}

- (jbyte)getHeader {
  return MTRequestResend_HEADER;
}

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeLongWithLong:messageId_];
}

- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  messageId_ = [((BSDataInput *) nil_chk(bs)) readLong];
}

@end

void MTRequestResend_initWithLong_(MTRequestResend *self, jlong messageId) {
  (void) MTProtoStruct_init(self);
  self->messageId_ = messageId;
}

MTRequestResend *new_MTRequestResend_initWithLong_(jlong messageId) {
  MTRequestResend *self = [MTRequestResend alloc];
  MTRequestResend_initWithLong_(self, messageId);
  return self;
}

void MTRequestResend_initWithBSDataInput_(MTRequestResend *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}

MTRequestResend *new_MTRequestResend_initWithBSDataInput_(BSDataInput *stream) {
  MTRequestResend *self = [MTRequestResend alloc];
  MTRequestResend_initWithBSDataInput_(self, stream);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTRequestResend)

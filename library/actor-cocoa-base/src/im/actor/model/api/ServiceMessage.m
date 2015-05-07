//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceMessage.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceMessage.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiServiceMessage () {
 @public
  NSString *text_;
  ImActorModelApiServiceEx *ext_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiServiceMessage, text_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiServiceMessage, ext_, ImActorModelApiServiceEx *)


#line 23
@implementation ImActorModelApiServiceMessage


#line 28
- (instancetype)initWithNSString:(NSString *)text
    withImActorModelApiServiceEx:(ImActorModelApiServiceEx *)ext {
  ImActorModelApiServiceMessage_initWithNSString_withImActorModelApiServiceEx_(self, text, ext);
  return self;
}


#line 33
- (instancetype)init {
  ImActorModelApiServiceMessage_init(self);
  return self;
}


#line 37
- (jint)getHeader {
  return 2;
}

- (NSString *)getText {
  return self->text_;
}

- (ImActorModelApiServiceEx *)getExt {
  return self->ext_;
}


#line 50
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->text_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  if ([values optBytesWithInt:3] != nil) {
    self->ext_ = ImActorModelApiServiceEx_fromBytesWithByteArray_([values getBytesWithInt:3]);
  }
}


#line 58
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->text_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->text_];
  if (self->ext_ != nil) {
    [writer writeBytesWithInt:3 withByteArray:[self->ext_ buildContainer]];
  }
}


#line 69
- (NSString *)description {
  NSString *res = @"struct ServiceMessage{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"text=", self->text_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", ext=", (self->ext_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end


#line 28
void ImActorModelApiServiceMessage_initWithNSString_withImActorModelApiServiceEx_(ImActorModelApiServiceMessage *self, NSString *text, ImActorModelApiServiceEx *ext) {
  (void) ImActorModelApiMessage_init(self);
  
#line 29
  self->text_ = text;
  self->ext_ = ext;
}


#line 28
ImActorModelApiServiceMessage *new_ImActorModelApiServiceMessage_initWithNSString_withImActorModelApiServiceEx_(NSString *text, ImActorModelApiServiceEx *ext) {
  ImActorModelApiServiceMessage *self = [ImActorModelApiServiceMessage alloc];
  ImActorModelApiServiceMessage_initWithNSString_withImActorModelApiServiceEx_(self, text, ext);
  return self;
}


#line 33
void ImActorModelApiServiceMessage_init(ImActorModelApiServiceMessage *self) {
  (void) ImActorModelApiMessage_init(self);
}


#line 33
ImActorModelApiServiceMessage *new_ImActorModelApiServiceMessage_init() {
  ImActorModelApiServiceMessage *self = [ImActorModelApiServiceMessage alloc];
  ImActorModelApiServiceMessage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceMessage)
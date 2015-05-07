//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/MessageUnsupported.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/MessageUnsupported.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/MessageUnsupported.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiMessageUnsupported () {
 @public
  jint key_;
  IOSByteArray *content_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiMessageUnsupported, content_, IOSByteArray *)


#line 23
@implementation ImActorModelApiMessageUnsupported


#line 28
- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content {
  ImActorModelApiMessageUnsupported_initWithInt_withByteArray_(self, key, content);
  return self;
}

- (jint)getHeader {
  return self->key_;
}


#line 39
- (void)parseWithBSBserValues:(BSBserValues *)values {
  @throw new_JavaIoIOException_initWithNSString_(@"Parsing is unsupported");
}


#line 44
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:key_];
  [writer writeBytesWithInt:2 withByteArray:content_];
}

@end


#line 28
void ImActorModelApiMessageUnsupported_initWithInt_withByteArray_(ImActorModelApiMessageUnsupported *self, jint key, IOSByteArray *content) {
  (void) ImActorModelApiMessage_init(self);
  
#line 29
  self->key_ = key;
  self->content_ = content;
}


#line 28
ImActorModelApiMessageUnsupported *new_ImActorModelApiMessageUnsupported_initWithInt_withByteArray_(jint key, IOSByteArray *content) {
  ImActorModelApiMessageUnsupported *self = [ImActorModelApiMessageUnsupported alloc];
  ImActorModelApiMessageUnsupported_initWithInt_withByteArray_(self, key, content);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiMessageUnsupported)
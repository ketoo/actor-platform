//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/EncryptedTextContentV1.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/EncryptedTextContentV1.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/EncryptedTextContentV1.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiEncryptedTextContentV1 () {
 @public
  NSString *text_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiEncryptedTextContentV1, text_, NSString *)

@implementation ImActorModelApiEncryptedTextContentV1


#line 23
- (instancetype)initWithNSString:(NSString *)text {
  if (self = [super init]) {
    
#line 24
    self->text_ = text;
  }
  return self;
}


#line 27
- (instancetype)init {
  return [super init];
}

- (jint)getHeader {
  
#line 32
  return 1;
}


#line 35
- (NSString *)getText {
  
#line 36
  return self->text_;
}


#line 40
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->text_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
}


#line 45
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 46
  if (self->text_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->text_];
}

- (NSString *)description {
  NSString *res = @"struct EncryptedTextContentV1{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiEncryptedTextContentV1 *)other {
  [super copyAllFieldsTo:other];
  other->text_ = text_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiEncryptedTextContentV1)
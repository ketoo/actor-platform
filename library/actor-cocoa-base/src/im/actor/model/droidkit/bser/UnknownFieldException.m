//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/UnknownFieldException.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/UnknownFieldException.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/UnknownFieldException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"


#line 6
@implementation BSUnknownFieldException


#line 7
- (instancetype)init {
  BSUnknownFieldException_init(self);
  return self;
}


#line 10
- (instancetype)initWithNSString:(NSString *)message {
  BSUnknownFieldException_initWithNSString_(self, message);
  return self;
}


#line 14
- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  BSUnknownFieldException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  return self;
}


#line 18
- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  BSUnknownFieldException_initWithJavaLangThrowable_(self, cause);
  return self;
}

@end


#line 7
void BSUnknownFieldException_init(BSUnknownFieldException *self) {
  (void) JavaLangRuntimeException_init(self);
}


#line 7
BSUnknownFieldException *new_BSUnknownFieldException_init() {
  BSUnknownFieldException *self = [BSUnknownFieldException alloc];
  BSUnknownFieldException_init(self);
  return self;
}


#line 10
void BSUnknownFieldException_initWithNSString_(BSUnknownFieldException *self, NSString *message) {
  (void) JavaLangRuntimeException_initWithNSString_(self, message);
}


#line 10
BSUnknownFieldException *new_BSUnknownFieldException_initWithNSString_(NSString *message) {
  BSUnknownFieldException *self = [BSUnknownFieldException alloc];
  BSUnknownFieldException_initWithNSString_(self, message);
  return self;
}


#line 14
void BSUnknownFieldException_initWithNSString_withJavaLangThrowable_(BSUnknownFieldException *self, NSString *message, JavaLangThrowable *cause) {
  (void) JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(self, message, cause);
}


#line 14
BSUnknownFieldException *new_BSUnknownFieldException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  BSUnknownFieldException *self = [BSUnknownFieldException alloc];
  BSUnknownFieldException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  return self;
}


#line 18
void BSUnknownFieldException_initWithJavaLangThrowable_(BSUnknownFieldException *self, JavaLangThrowable *cause) {
  (void) JavaLangRuntimeException_initWithJavaLangThrowable_(self, cause);
}


#line 18
BSUnknownFieldException *new_BSUnknownFieldException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  BSUnknownFieldException *self = [BSUnknownFieldException alloc];
  BSUnknownFieldException_initWithJavaLangThrowable_(self, cause);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSUnknownFieldException)
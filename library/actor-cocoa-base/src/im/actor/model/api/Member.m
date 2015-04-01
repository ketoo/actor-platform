//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Member.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Member.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiMember () {
 @public
  jint uid_;
  jint inviterUid_;
  jlong date_;
}
@end

@implementation ImActorModelApiMember


#line 25
- (instancetype)initWithInt:(jint)uid
                    withInt:(jint)inviterUid
                   withLong:(jlong)date {
  if (self = [super init]) {
    
#line 26
    self->uid_ = uid;
    
#line 27
    self->inviterUid_ = inviterUid;
    
#line 28
    self->date_ = date;
  }
  return self;
}


#line 31
- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  
#line 36
  return self->uid_;
}


#line 39
- (jint)getInviterUid {
  
#line 40
  return self->inviterUid_;
}


#line 43
- (jlong)getDate {
  
#line 44
  return self->date_;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->inviterUid_ = [values getIntWithInt:2];
  self->date_ = [values getLongWithInt:3];
}


#line 55
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 56
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeIntWithInt:2 withInt:self->inviterUid_];
  [writer writeLongWithInt:3 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"struct Member{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", inviterUid=", self->inviterUid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiMember *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->inviterUid_ = inviterUid_;
  other->date_ = date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiMember)
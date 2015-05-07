//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSendAuthCode.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSendAuthCode.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSendAuthCode.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSendAuthCode () {
 @public
  jlong phoneNumber_;
  jint appId_;
  NSString *apiKey_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSendAuthCode, apiKey_, NSString *)


#line 24
@implementation ImActorModelApiRpcRequestSendAuthCode


#line 27
+ (ImActorModelApiRpcRequestSendAuthCode *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSendAuthCode_fromBytesWithByteArray_(data);
}


#line 35
- (instancetype)initWithLong:(jlong)phoneNumber
                     withInt:(jint)appId
                withNSString:(NSString *)apiKey {
  ImActorModelApiRpcRequestSendAuthCode_initWithLong_withInt_withNSString_(self, phoneNumber, appId, apiKey);
  return self;
}


#line 41
- (instancetype)init {
  ImActorModelApiRpcRequestSendAuthCode_init(self);
  return self;
}


#line 45
- (jlong)getPhoneNumber {
  return self->phoneNumber_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getApiKey {
  return self->apiKey_;
}


#line 58
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->phoneNumber_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->appId_ = [values getIntWithInt:2];
  self->apiKey_ = [values getStringWithInt:3];
}


#line 65
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  [writer writeIntWithInt:2 withInt:self->appId_];
  if (self->apiKey_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->apiKey_];
}


#line 75
- (NSString *)description {
  NSString *res = @"rpc SendAuthCode{";
  res = JreStrcat("$$", res, JreStrcat("$J", @"phoneNumber=", self->phoneNumber_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 83
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSendAuthCode_HEADER;
}

@end


#line 27
ImActorModelApiRpcRequestSendAuthCode *ImActorModelApiRpcRequestSendAuthCode_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSendAuthCode_initialize();
  
#line 28
  return ((ImActorModelApiRpcRequestSendAuthCode *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestSendAuthCode_init(), data));
}


#line 35
void ImActorModelApiRpcRequestSendAuthCode_initWithLong_withInt_withNSString_(ImActorModelApiRpcRequestSendAuthCode *self, jlong phoneNumber, jint appId, NSString *apiKey) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 36
  self->phoneNumber_ = phoneNumber;
  self->appId_ = appId;
  self->apiKey_ = apiKey;
}


#line 35
ImActorModelApiRpcRequestSendAuthCode *new_ImActorModelApiRpcRequestSendAuthCode_initWithLong_withInt_withNSString_(jlong phoneNumber, jint appId, NSString *apiKey) {
  ImActorModelApiRpcRequestSendAuthCode *self = [ImActorModelApiRpcRequestSendAuthCode alloc];
  ImActorModelApiRpcRequestSendAuthCode_initWithLong_withInt_withNSString_(self, phoneNumber, appId, apiKey);
  return self;
}

void ImActorModelApiRpcRequestSendAuthCode_init(ImActorModelApiRpcRequestSendAuthCode *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 41
ImActorModelApiRpcRequestSendAuthCode *new_ImActorModelApiRpcRequestSendAuthCode_init() {
  ImActorModelApiRpcRequestSendAuthCode *self = [ImActorModelApiRpcRequestSendAuthCode alloc];
  ImActorModelApiRpcRequestSendAuthCode_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSendAuthCode)
//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/ServiceGroupUserKicked.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/ServiceGroupUserKicked.h"
#include "java/io/IOException.h"

@interface ImActorModelEntityContentServiceGroupUserKicked () {
 @public
  jint kickedUid_;
}
- (instancetype)init;
@end

@implementation ImActorModelEntityContentServiceGroupUserKicked

+ (ImActorModelEntityContentServiceGroupUserKicked *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelEntityContentServiceGroupUserKicked_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)kickedUid {
  if (self = [super initWithNSString:@"User kicked"]) {
    self->kickedUid_ = kickedUid;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getKickedUid {
  return kickedUid_;
}

- (ImActorModelEntityContentAbsContent_ContentTypeEnum *)getContentType {
  return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_KICKED();
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  [super parseWithBSBserValues:values];
  kickedUid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:10];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [super serializeWithBSBserWriter:writer];
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:10 withInt:kickedUid_];
}

- (void)copyAllFieldsTo:(ImActorModelEntityContentServiceGroupUserKicked *)other {
  [super copyAllFieldsTo:other];
  other->kickedUid_ = kickedUid_;
}

@end

ImActorModelEntityContentServiceGroupUserKicked *ImActorModelEntityContentServiceGroupUserKicked_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityContentServiceGroupUserKicked_init();
  return ((ImActorModelEntityContentServiceGroupUserKicked *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelEntityContentServiceGroupUserKicked alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentServiceGroupUserKicked)
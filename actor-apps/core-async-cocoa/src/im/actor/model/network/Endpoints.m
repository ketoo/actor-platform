//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/Endpoints.java
//


#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/ConnectionEndpoint.h"
#include "im/actor/model/network/Endpoints.h"

@interface AMEndpoints () {
 @public
  jint roundRobin_;
  IOSObjectArray *endpoints_;
}

@end

J2OBJC_FIELD_SETTER(AMEndpoints, endpoints_, IOSObjectArray *)

@implementation AMEndpoints

- (instancetype)initWithAMConnectionEndpointArray:(IOSObjectArray *)endpoints {
  AMEndpoints_initWithAMConnectionEndpointArray_(self, endpoints);
  return self;
}

- (AMConnectionEndpoint *)fetchEndpoint {
  roundRobin_ = (roundRobin_ + 1) % ((IOSObjectArray *) nil_chk(endpoints_))->size_;
  return IOSObjectArray_Get(endpoints_, roundRobin_);
}

@end

void AMEndpoints_initWithAMConnectionEndpointArray_(AMEndpoints *self, IOSObjectArray *endpoints) {
  (void) NSObject_init(self);
  self->roundRobin_ = 0;
  self->endpoints_ = endpoints;
}

AMEndpoints *new_AMEndpoints_initWithAMConnectionEndpointArray_(IOSObjectArray *endpoints) {
  AMEndpoints *self = [AMEndpoints alloc];
  AMEndpoints_initWithAMConnectionEndpointArray_(self, endpoints);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMEndpoints)

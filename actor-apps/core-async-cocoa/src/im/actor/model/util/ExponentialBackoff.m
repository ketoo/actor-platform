//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/util/ExponentialBackoff.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Environment.h"
#include "im/actor/model/util/AtomicIntegerCompat.h"
#include "im/actor/model/util/ExponentialBackoff.h"
#include "java/util/Random.h"

@interface AMExponentialBackoff () {
 @public
  jint minDelay_;
  jint maxDelay_;
  jint maxFailureCount_;
  AMAtomicIntegerCompat *currentFailureCount_;
  JavaUtilRandom *random_;
}

@end

J2OBJC_FIELD_SETTER(AMExponentialBackoff, currentFailureCount_, AMAtomicIntegerCompat *)
J2OBJC_FIELD_SETTER(AMExponentialBackoff, random_, JavaUtilRandom *)

@implementation AMExponentialBackoff

- (instancetype)initWithInt:(jint)minDelay
                    withInt:(jint)maxDelay
                    withInt:(jint)maxFailureCount {
  AMExponentialBackoff_initWithInt_withInt_withInt_(self, minDelay, maxDelay, maxFailureCount);
  return self;
}

- (jlong)exponentialWait {
  jlong maxDelayRet = minDelay_ + ((maxDelay_ - minDelay_) / maxFailureCount_) * [((AMAtomicIntegerCompat *) nil_chk(currentFailureCount_)) get];
  @synchronized(random_) {
    return J2ObjCFpToLong(([((JavaUtilRandom *) nil_chk(random_)) nextFloat] * maxDelayRet));
  }
}

- (void)onFailure {
  jint val = [((AMAtomicIntegerCompat *) nil_chk(currentFailureCount_)) incrementAndGet];
  if (val > maxFailureCount_) {
    [currentFailureCount_ compareAndSetWithInt:val withInt:maxFailureCount_];
  }
}

- (void)onSuccess {
  [self reset];
}

- (void)reset {
  [((AMAtomicIntegerCompat *) nil_chk(currentFailureCount_)) setWithInt:0];
}

@end

void AMExponentialBackoff_initWithInt_withInt_withInt_(AMExponentialBackoff *self, jint minDelay, jint maxDelay, jint maxFailureCount) {
  (void) NSObject_init(self);
  self->currentFailureCount_ = DKEnvironment_createAtomicIntWithInt_(1);
  self->random_ = new_JavaUtilRandom_init();
  self->minDelay_ = minDelay;
  self->maxDelay_ = maxDelay;
  self->maxFailureCount_ = maxFailureCount;
}

AMExponentialBackoff *new_AMExponentialBackoff_initWithInt_withInt_withInt_(jint minDelay, jint maxDelay, jint maxFailureCount) {
  AMExponentialBackoff *self = [AMExponentialBackoff alloc];
  AMExponentialBackoff_initWithInt_withInt_withInt_(self, minDelay, maxDelay, maxFailureCount);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMExponentialBackoff)

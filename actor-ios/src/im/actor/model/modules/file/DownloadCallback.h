//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/file/DownloadCallback.java
//

#ifndef _ImActorModelModulesFileDownloadCallback_H_
#define _ImActorModelModulesFileDownloadCallback_H_

@protocol ImActorModelFilesFileReference;

#include "J2ObjC_header.h"

@protocol ImActorModelModulesFileDownloadCallback < NSObject, JavaObject >

- (void)onNotDownloaded;

- (void)onDownloadingWithFloat:(jfloat)progress;

- (void)onDownloadedWithImActorModelFilesFileReference:(id<ImActorModelFilesFileReference>)reference;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileDownloadCallback)

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileDownloadCallback)

#endif // _ImActorModelModulesFileDownloadCallback_H_
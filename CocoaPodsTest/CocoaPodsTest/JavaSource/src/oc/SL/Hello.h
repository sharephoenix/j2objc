//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/apple/MyClientRemote/j2objc/CocoaPodsTest/CocoaPodsTest/JavaSource/src/SLB/Hello.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SLHello")
#ifdef RESTRICT_SLHello
#define INCLUDE_ALL_SLHello 0
#else
#define INCLUDE_ALL_SLHello 1
#endif
#undef RESTRICT_SLHello

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (SLHello_) && (INCLUDE_ALL_SLHello || defined(INCLUDE_SLHello))
#define SLHello_

@class IOSObjectArray;
@class JavaLangInteger;

@interface SLHello : NSObject {
 @public
  NSString *aaaaaaaaaaaaa_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (NSString *)getAddress;

- (JavaLangInteger *)getAge;

+ (NSString *)getNickName;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (void)setAddressWithNSString:(NSString *)address;

- (void)setAgeWithJavaLangInteger:(JavaLangInteger *)age;

@end

J2OBJC_EMPTY_STATIC_INIT(SLHello)

J2OBJC_FIELD_SETTER(SLHello, aaaaaaaaaaaaa_, NSString *)

FOUNDATION_EXPORT void SLHello_init(SLHello *self);

FOUNDATION_EXPORT SLHello *new_SLHello_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT SLHello *create_SLHello_init(void);

FOUNDATION_EXPORT NSString *SLHello_getNickName(void);

FOUNDATION_EXPORT void SLHello_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(SLHello)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_SLHello")

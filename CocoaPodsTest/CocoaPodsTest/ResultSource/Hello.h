//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/apple/Downloads/CocoaPodsTest/CocoaPodsTest/JavaSource/src/Hello.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Hello")
#ifdef RESTRICT_Hello
#define INCLUDE_ALL_Hello 0
#else
#define INCLUDE_ALL_Hello 1
#endif
#undef RESTRICT_Hello

#if !defined (Hello_) && (INCLUDE_ALL_Hello || defined(INCLUDE_Hello))
#define Hello_

@interface Hello : NSObject

#pragma mark Public

- (instancetype)init;

+ (NSString *)getNickName;

@end

J2OBJC_EMPTY_STATIC_INIT(Hello)

FOUNDATION_EXPORT void Hello_init(Hello *self);

FOUNDATION_EXPORT Hello *new_Hello_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Hello *create_Hello_init(void);

FOUNDATION_EXPORT NSString *Hello_getNickName(void);

J2OBJC_TYPE_LITERAL_HEADER(Hello)

#endif

#pragma pop_macro("INCLUDE_ALL_Hello")
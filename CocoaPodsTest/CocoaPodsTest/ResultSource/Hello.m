//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/apple/MyClientRemote/j2objc/CocoaPodsTest/CocoaPodsTest/JavaSource/src/Hello.java
//

#include "Hello.h"
#include "J2ObjC_source.h"

@interface Hello () {
 @public
  NSString *address_;
}

@end

J2OBJC_FIELD_SETTER(Hello, address_, NSString *)

#line 1 "/Users/apple/MyClientRemote/j2objc/CocoaPodsTest/CocoaPodsTest/JavaSource/src/Hello.java"


#line 1
@implementation Hello

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 1
- (instancetype)init {
  Hello_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 2
+ (NSString *)getNickName {
  return Hello_getNickName();
}


#line 8
- (NSString *)getAddress {
  return address_;
}

- (void)setAddressWithNSString:(NSString *)address {
  self->address_ = address;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getNickName);
  methods[2].selector = @selector(getAddress);
  methods[3].selector = @selector(setAddressWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "address_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setAddress", "LNSString;" };
  static const J2ObjcClassInfo _Hello = { "Hello", NULL, ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_Hello;
}

@end


#line 1
void Hello_init(Hello *self) {
  NSObject_init(self);
  self->address_ =
#line 6
  @"anhui";
}


#line 1
Hello *new_Hello_init() {
  J2OBJC_NEW_IMPL(Hello, init)
}


#line 1
Hello *create_Hello_init() {
  J2OBJC_CREATE_IMPL(Hello, init)
}


#line 2
NSString *Hello_getNickName() {
  Hello_initialize();
  
#line 3
  return @"alexluan";
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Hello)

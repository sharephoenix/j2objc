//
//  ViewController.m
//  CocoaPodsTest
//
//  Created by phoenix on 2019/1/16.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ViewController.h"
#import "Hello.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString * name = [Hello getNickName];
    NSLog(@"%@",name);
    Hello * hello = [Hello new];
    NSLog(@"%@",hello.getAddress);
    [hello setAddressWithNSString:@"shanghai"];
    NSLog(@"%@",hello.getAddress);
}


@end

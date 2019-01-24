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

    NSMutableArray * array = [[NSMutableArray alloc] init];
    NSString * nameg = @"ddddd";
    [array addObjectsFromArray:@[@"aaa", @"bbb", nameg, @"cccc"]];
    [array removeObjectsInRange:NSMakeRange(3, 2)];
    [array insertObject:@"aaaa" atIndex:3];
    NSLog(@"%@",array);

    NSString * name = [Hello getNickName];
    NSLog(@"%@",name);
    Hello * hello = [Hello new];
    NSLog(@"%@",hello.getAddress);
    [hello setAddressWithNSString:@"shanghai"];
    NSLog(@"%@",hello.getAddress);
}


@end

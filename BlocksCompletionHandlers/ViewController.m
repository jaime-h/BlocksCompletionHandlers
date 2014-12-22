//
//  ViewController.m
//  BlocksCompletionHandlers
//
//  Created by Jaime Hernandez on 12/22/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSInteger (^mathOpertaion)(NSInteger x, NSInteger y) = ^NSInteger(NSInteger x, NSInteger y)
    {
        return x + y;
    };

    NSInteger sum = mathOpertaion(1,2);
    NSLog(@"Sum of 1 and 2 is %li", (long) sum);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

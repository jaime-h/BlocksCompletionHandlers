//
//  ViewController.m
//  BlocksCompletionHandlers
//
//  Created by Jaime Hernandez on 12/22/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//
// Taken from --> http://nscookbook.com/2013/06/ios-programming-recipe-25-implementing-blocks-part-i/
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NewSimpleCounter *newSimpleCounter = [NewSimpleCounter new];
    [newSimpleCounter countToTenThousandAndReturnCompletionBlock:^(BOOL completed) {
        if (completed) {
            NSLog(@"Ten Thousand Counts Finished");
        }
    }];
    
    /*
    
    [self performMathOperation:^(NSInteger x, NSInteger y) {
        NSLog(@"This is the value for x: %li", (long)x);
        NSLog(@"This is the value for y: %li", (long)y);
    }];
    
    [self startCountingToThenThousand];
    

    NSInteger z = 20;
    
    NSInteger (^mathOpertaion)(NSInteger x, NSInteger y) = ^NSInteger(NSInteger x, NSInteger y)
    {
        return x + y +z;
    };

    NSInteger sum = mathOpertaion(1,2);
    NSLog(@"Sum of 1 and 2 is %li", (long) sum);
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)performMathOperation:(void (^)(NSInteger, NSInteger))mathOperationBlock
{
    mathOperationBlock(1,2);
}

-(void)startCountingToThenThousand
{
    OldSimpleCounter *oldSimpleCounter = [OldSimpleCounter new];
    [oldSimpleCounter countToTenThousandAndNotifyObserver:self withSelector:@selector(tenThousandCounts:)];
}

-(void)tenThousandCounts:(id)sender
{
    NSLog(@"Ten Thousand Counts Finished");
}

@end

//
//  ViewController.h
//  BlocksCompletionHandlers
//
//  Created by Jaime Hernandez on 12/22/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "OldSimpleCounter.h"

@interface ViewController : UIViewController

-(void)performMathOperation:(void (^)(NSInteger, NSInteger))mathOperationBlock;

@end


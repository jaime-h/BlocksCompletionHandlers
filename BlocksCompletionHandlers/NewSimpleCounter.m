//
//  NewSimpleCounter.m
//  BlocksCompletionHandlers
//
//  Created by Jaime Hernandez on 12/22/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import "NewSimpleCounter.h"

@implementation NewSimpleCounter

-(void)countToTenThousandAndReturnCompletionBlock:(void (^)(BOOL))completed
{
    int x= 1;
    while (x < 10000) {
        NSLog(@"%i", x);
              x++;
    }
              
              completed(YES);
}

@end

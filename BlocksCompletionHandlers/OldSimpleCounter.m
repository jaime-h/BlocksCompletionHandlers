//
//  OldSimpleCounter.m
//  BlocksCompletionHandlers
//
//  Created by Jaime Hernandez on 12/22/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import "OldSimpleCounter.h"

@implementation OldSimpleCounter


-(void)countToTenThousandAndNotifyObserver:(id)object withSelector:(SEL)selector;
{
    int x = 1;
    while (x < 10000)
    {
        NSLog(@"%i", x);
        x++;
    }
    
    [object performSelector:selector withObject:object];
}

@end

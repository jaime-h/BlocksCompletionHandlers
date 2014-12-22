//
//  OldSimpleCounter.h
//  BlocksCompletionHandlers
//
//  Created by Jaime Hernandez on 12/22/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OldSimpleCounter : NSObject

-(void)countToTenThousandAndNotifyObserver:(id)object withSelector:(SEL)selector;

@end

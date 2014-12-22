//
//  NewSimpleCounter.h
//  BlocksCompletionHandlers
//
//  Created by Jaime Hernandez on 12/22/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewSimpleCounter : NSObject

-(void)countToTenThousandAndReturnCompletionBlock:(void (^)(BOOL))completed;

@end

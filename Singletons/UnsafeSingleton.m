//
//  UnsafeSingleton.m
//  Singletons
//
//  Created by Christopher Constable on 1/22/14.
//  Copyright (c) 2014 The Analog School. All rights reserved.
//

#import "UnsafeSingleton.h"

@implementation UnsafeSingleton

+ (instancetype)sharedInstance
{
    static id instance;
    if (!instance) {
            NSLog(@"Unsafe Singleton is being created...");
            instance = [[self alloc] init];
    }
    
    return instance;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Simulate long running operation (1500ms)
        [NSThread sleepForTimeInterval:1.5];
    }
    
    return self;
}

@end

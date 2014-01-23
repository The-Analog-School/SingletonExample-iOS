//
//  MySingleton.m
//  Singletons
//
//  Created by Christopher Constable on 9/19/13.
//  Copyright (c) 2013 The Analog School. All rights reserved.
//

#import "SafeSingleton.h"

@implementation SafeSingleton

+ (instancetype)sharedInstance
{
    static id instance;
    static dispatch_once_t onceToken;
    
    if (!instance) {
        dispatch_once(&onceToken, ^{
            NSLog(@"Safe singleton is being created...");
            instance = [[self alloc] init];
        });
    }
    
    return instance;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Simulate long running operation (500ms)
        [NSThread sleepForTimeInterval:0.5];
    }
    
    return self;
}

@end

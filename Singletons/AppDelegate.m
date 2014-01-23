//
//  AppDelegate.m
//  Singletons
//
//  Created by Christopher Constable on 9/19/13.
//  Copyright (c) 2013 The Analog School. All rights reserved.
//

#import "AppDelegate.h"
#import "UnsafeSingleton.h"
#import "SafeSingleton.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self performSelectorInBackground:@selector(fetchDataInBackground) withObject:nil];
    return YES;
}

- (void)fetchDataInBackground
{
    NSLog(@"App Delegate is requesting singletons...");
    UnsafeSingleton *unsafeSingleton = [UnsafeSingleton sharedInstance];
    NSLog(@"App Delegate unsafe singleton: %p", (__bridge void *)unsafeSingleton);
    SafeSingleton *singleton = [SafeSingleton sharedInstance];
    NSLog(@"App Delegate safe singleton: %p", (__bridge void *)singleton);
}

@end

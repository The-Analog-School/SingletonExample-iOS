//
//  ViewController.m
//  Singletons
//
//  Created by Christopher Constable on 9/19/13.
//  Copyright (c) 2013 The Analog School. All rights reserved.
//

#import "ViewController.h"
#import "UnsafeSingleton.h"
#import "SafeSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self performSelectorInBackground:@selector(fetchDataInBackground) withObject:nil];    
}

- (void)fetchDataInBackground
{
    NSLog(@"View Controller is requesting singleton...");
    UnsafeSingleton *unsafeSingleton = [UnsafeSingleton sharedInstance];
    NSLog(@"View Controller unsafe singleton: %p", (__bridge void *)unsafeSingleton);
    SafeSingleton *singleton = [SafeSingleton sharedInstance];
    NSLog(@"View Controller safe singleton: %p", (__bridge void *)singleton);
}

@end

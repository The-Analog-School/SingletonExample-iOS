//
//  UnsafeSingleton.h
//  Singletons
//
//  Created by Christopher Constable on 1/22/14.
//  Copyright (c) 2014 The Analog School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UnsafeSingleton : NSObject

+ (instancetype)sharedInstance;

@end

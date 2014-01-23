//
//  MySingleton.h
//  Singletons
//
//  Created by Christopher Constable on 9/19/13.
//  Copyright (c) 2013 The Analog School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SafeSingleton : NSObject

+ (instancetype)sharedInstance;

@end

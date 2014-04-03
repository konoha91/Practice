//
//  HDataManager.m
//  Pratice3
//
//  Created by Hung on 3/31/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import "HDataManager.h"

#define verifyiedEmail @"abc@gmail.com"
#define verifyiedPassword @"123"


@implementation HDataManager


+ (id)sharedManager {
    
    static HDataManager *sharedHDataManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedHDataManager = [[self alloc] init];
    });
    return sharedHDataManager;
}
- (id)init {
    if (self = [super init]) {
        self.verifyUser = [HUser initWithEmail:verifyiedEmail andPassword:verifyiedPassword];
        }
    return self;
}

@end

//
//  HDataManager.h
//  Pratice3
//
//  Created by Hung on 3/31/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HUser.h"

@interface HDataManager : NSObject

@property (nonatomic, retain) HUser *verifyUser;

+ (id)sharedManager;

@end

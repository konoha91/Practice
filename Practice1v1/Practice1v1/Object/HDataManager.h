//
//  HDataManager.h
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HUser.h"
#import "HBook.h"

@interface HDataManager : NSObject

@property (nonatomic, strong) HUser *verifyUser;
@property (nonatomic, strong) NSMutableArray *books;

+ (HDataManager*)sharedManager;

@end

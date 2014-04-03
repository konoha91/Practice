//
//  HUser.m
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import "HUser.h"

@implementation HUser

+(HUser*)initWithEmail:(NSString*)email andPassword:(NSString*)password {
    HUser* user = [[HUser alloc] init];
    user.email = email;
    user.password = password;
    return user;
}

@end

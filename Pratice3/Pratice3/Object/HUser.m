//
//  HUser.m
//  Pratice3
//
//  Created by Hung on 3/31/14.
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

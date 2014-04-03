//
//  HUser.h
//  Pratice3
//
//  Created by Hung on 3/31/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HUser : NSObject

@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *password;

+(HUser*)initWithEmail:(NSString*)email andPassword:(NSString*)password;

@end

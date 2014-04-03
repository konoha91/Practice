//
//  HBooks.h
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HBook : NSObject

@property (strong, nonatomic) NSString *bookName;
@property (strong, nonatomic) NSString *author;
@property (strong, nonatomic) NSString *imageName;

+(HBook*)initWithbookName:(NSString *)Bookname andAuthor:(NSString *)author andImageName:(NSString *)imagename;

@end

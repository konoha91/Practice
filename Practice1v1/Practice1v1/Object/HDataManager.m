//
//  HDataManager.m
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import "HDataManager.h"

#define verifyiedEmail @"abc@gmail.com"
#define verifyiedPassword @"123"


@implementation HDataManager


+ (HDataManager*)sharedManager {
    
    static HDataManager *sharedHDataManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedHDataManager = [[self alloc] init];
    });
    return sharedHDataManager;
}
- (HDataManager*)init {
    if (self = [super init]) {
        self.verifyUser = [HUser initWithEmail:verifyiedEmail andPassword:verifyiedPassword];
        [self initBooks];
    }
    return self;
}


- (void)initBooks {
    NSArray* bookName = @[@"Price and Prejudice",@"Walden",@"The conduct of life",@"middlemarch",@"War and Peace",@"Mansfield Park",@"The New Atlantis",@"The old man and golden fish",];
    NSArray* author = @[@"Austen,Jane",@"Thoreau",@"Wiliam",@"Someone",@"Somewhere",@"Sometime",@"Something",@"Some",];
    NSArray* imageName = @[@"book1.jpeg",@"book2.jpeg",@"book3.jpeg",@"book4.jpeg",@"book5.jpeg",@"book6.jpeg",@"book7.jpeg",@"book8.jpeg"];
    
    self.books = [[NSMutableArray alloc] init];
    
    for (int i=0; i < [bookName count];i++) {
        HBook *book = [HBook initWithbookName:[bookName objectAtIndex:i] andAuthor:[author objectAtIndex:i] andImageName:[imageName objectAtIndex:i]];
        [self.books addObject:book];
        
    };
    
}

@end

//
//  HBooks.m
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import "HBook.h"

@implementation HBook

+(HBook*) initWithbookName:(NSString *)Bookname andAuthor:(NSString *)author andImageName:(NSString *)imagename {
    HBook* bookdetail = [[HBook alloc] init];
    bookdetail.bookName = Bookname;
    bookdetail.author = author;
    bookdetail.imageName = imagename;
    return bookdetail;
}
@end

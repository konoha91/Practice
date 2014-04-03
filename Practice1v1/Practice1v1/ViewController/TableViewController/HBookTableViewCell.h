//
//  HTableViewCell.h
//  Practice1v1
//
//  Created by Hung on 4/2/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HBook.h"

@protocol BookCellDegate <NSObject>

- (void)deleteBook:(HBook*)book;

@end


@interface HBookTableViewCell : UITableViewCell

@property (nonatomic) NSObject<BookCellDegate>* delegate;
@property (weak, nonatomic) HBook *book;
@property (weak, nonatomic) IBOutlet UILabel *txtbookName;
@property (weak, nonatomic) IBOutlet UILabel *txtauthor;
@property (weak, nonatomic) IBOutlet UIImageView *thumbImage;



- (void)updateViewWithBook:(HBook*)book;
- (IBAction)pressDeleteButton:(id)sender;

@end


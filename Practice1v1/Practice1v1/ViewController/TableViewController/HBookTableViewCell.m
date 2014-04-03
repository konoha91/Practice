//
//  HTableViewCell.m
//  Practice1v1
//
//  Created by Hung on 4/2/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import "HBookTableViewCell.h"

@implementation HBookTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateViewWithBook:(HBook*)book{
    
    self.txtbookName.text = book.bookName;
    self.txtauthor.text = book.author;
    self.thumbImage.image = [UIImage imageNamed:book.imageName];
    self.book = book;
}

- (IBAction)pressDeleteButton:(id)sender {
    [self.delegate deleteBook:self.book];
    
}



@end

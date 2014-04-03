//
//  HTableViewController.h
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HBook.h"
#import "HBookTableViewCell.h"

@interface HTableViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,BookCellDegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)pressEditButton:(id)sender;

@property (strong, nonatomic) NSMutableArray *books;



@end

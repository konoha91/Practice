//
//  HCoreDataViewController.h
//  Practice1v1
//
//  Created by Hung on 4/3/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HAppDelegate.h"

@interface HCoreDataViewController : UIViewController

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITableView *HTableView;
@property (weak, nonatomic) IBOutlet UITextField *txtbookName;
@property (weak, nonatomic) IBOutlet UITextField *txtauthor;

- (IBAction)pressSaveButton:(id)sender;

@end

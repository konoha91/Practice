//
//  HTableViewController.m
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import "HTableViewController.h"
#import "HDataManager.h"
#import "HBookTableViewCell.h"



@interface HTableViewController ()

@end

@implementation HTableViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit"style:self.editButtonItem.style target:self
                                                            action:@selector(pressEditButton:)];
    self.books = [HDataManager sharedManager].books;

}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.books count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString *cellIdentifier = @"BookTableCell";
    
    HBookTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    HBook *book = [self.books objectAtIndex:indexPath.row];
    
    [cell updateViewWithBook:book];
    cell.delegate = self;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.books removeObjectAtIndex:indexPath.row];
       [self.tableView reloadData];
   }
}


- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    [self.books exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex:toIndexPath.row];
    [self.books exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex:toIndexPath.row];
    [self.books exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex:toIndexPath.row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void) deleteBook:(HBook *)book{
    [self.books removeObject:book];
    [self.tableView reloadData];
}
- (IBAction)pressEditButton:(id)sender {
    if ([self.tableView isEditing]) {
        // If the tableView is already in edit mode, turn it off. Also change the title of the button to reflect the intended verb (‘Edit’, in this case).
        [self.tableView setEditing:NO animated:YES];
           self.navigationItem.rightBarButtonItem.title=@"Edit";
    }
    else {
        self.navigationItem.rightBarButtonItem.title=@"Done";
       //    [self.editButton setTitle:@"Done"forState:UIControlStateNormal];
        
        // Turn on edit mode
        
        [self.tableView setEditing:YES animated:YES];
    }
}

@end

//
//  HLoginViewController.m
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import "HLoginViewController.h"
#import "HDataManager.h"

@interface HLoginViewController ()

@end

@implementation HLoginViewController

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
    // Do any additional setup after loading the view.
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

- (IBAction)pressedLogin:(id)sender {
    /*HUser* enterUser = [HUser initWithEmail:self.txtusername.text andPassword:self.txtpassword.text];
    NSLog(@"user email: %@", enterUser.email);
    if ([self loginWithUser:enterUser] == TRUE) {
        [self performSegueWithIdentifier:@"segue_books" sender:self];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Incorrect" message:@"Incorrect ID or Password" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
    }*/
    [self performSegueWithIdentifier:@"segue_books" sender:self];
    
}


- (BOOL)loginWithUser:(HUser*)user {
    
    HUser *verifyUser = [HDataManager sharedManager].verifyUser;
    if ([verifyUser.email isEqualToString:user.email] && [verifyUser.password isEqualToString:user.password]) {
        return TRUE;
    } else {
        return FALSE;
    };
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.txtpassword) {
        [theTextField resignFirstResponder];
        [self pressedLogin:nil];
    } else if (theTextField == self.txtusername) {
        [self.txtpassword becomeFirstResponder];
    }
    return YES;
}


- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:YES];
}


@end
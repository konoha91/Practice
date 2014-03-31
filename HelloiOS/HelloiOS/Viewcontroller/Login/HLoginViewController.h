//
//  HLoginViewController.h
//  HelloiOS
//
//  Created by Hung on 3/31/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HLoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtUserName;
- (IBAction)touchLoginButton:(id)sender;
@end

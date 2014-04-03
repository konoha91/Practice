//
//  HLoginViewController.h
//  Practice1v1
//
//  Created by Hung on 4/1/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUser.h"

@interface HLoginViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtusername;
@property (weak, nonatomic) IBOutlet UITextField *txtpassword;

- (IBAction)pressedLogin:(id)sender;
- (IBAction)backgroundTap:(id)sender;

@end


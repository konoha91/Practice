//
//  HViewController.h
//  SecondPractice
//
//  Created by Hung on 3/31/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;

- (IBAction)pressedLogin:(id)sender;


@end

//
//  ViewController.h
//  IOSLoginUserDefaults
//
//  Created by ahmedpro on 3/18/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *loginPhoneTF;
@property (weak, nonatomic) IBOutlet UITextField *loginPasswordTF;

- (IBAction)login:(UIButton *)sender;
- (IBAction)registerUser:(UIButton *)sender;

@end


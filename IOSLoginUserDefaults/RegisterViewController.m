#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)createAccount:(UIButton *)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject: self.registerNameTF.text forKey: @"name"];
    [userDefaults setObject: self.registerPhoneTF.text forKey: @"phone"];
    [userDefaults setObject: self.registerPasswordTF.text forKey: @"password"];
    
    [self.navigationController popViewControllerAnimated: YES];
}
@end

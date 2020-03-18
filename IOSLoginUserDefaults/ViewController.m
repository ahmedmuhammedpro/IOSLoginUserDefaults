#import "ViewController.h"
#import "RegisterViewController.h"
#import "WelcomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSString *phone;
    NSString *password;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)login:(UIButton *)sender {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    phone = [userDefaults objectForKey: @"phone"];
    password = [userDefaults objectForKey: @"password"];
    
    
    if ([phone isEqualToString: self.loginPhoneTF.text] && [password isEqualToString: self.loginPasswordTF.text]) {
        
        WelcomeViewController *welcome = [self.storyboard instantiateViewControllerWithIdentifier: @"welcomeUser"];
        
        [self.navigationController pushViewController: welcome animated: YES];
        
    } else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle: @"Failed" message: @"Incorrect phone or password" delegate: self cancelButtonTitle: nil otherButtonTitles: @"Try again", @"Register", nil];
        [alertView show];
    }
}

- (void) alertView: (UIAlertView *) alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        
        self.loginPhoneTF.text = @"";
        self.loginPasswordTF.text = @"";
        
    } else if (buttonIndex == 1) {
        
        RegisterViewController *registerUser = [self.storyboard instantiateViewControllerWithIdentifier: @"registerUser"];
        
        [self.navigationController pushViewController: registerUser animated: YES];
    }
}

@end

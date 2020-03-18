#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *registerNameTF;
@property (weak, nonatomic) IBOutlet UITextField *registerPhoneTF;
@property (weak, nonatomic) IBOutlet UITextField *registerPasswordTF;

- (IBAction)createAccount:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END

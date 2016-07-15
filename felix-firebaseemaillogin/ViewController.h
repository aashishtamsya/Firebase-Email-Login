//
//  ViewController.h
//  felix-firebaseemaillogin
//
//  Created by Felix ITs 01 on 15/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    
}

@property (weak, nonatomic) IBOutlet UITextField *textFieldEmail;
- (IBAction)loginButtonTapped:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textFieldPassword;
@property (weak, nonatomic) IBOutlet UIButton *buttonLogin;
@end


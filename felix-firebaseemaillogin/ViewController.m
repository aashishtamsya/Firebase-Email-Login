//
//  ViewController.m
//  felix-firebaseemaillogin
//
//  Created by Felix ITs 01 on 15/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@import Firebase;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)login:(NSString *)email password:(NSString*) password {
    
    [[FIRAuth auth]signInWithEmail:email password:password completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
        if (error == nil) {
            NSLog(@"Logged In Successfully.");
        }
        else {
            NSLog(@"ERROR : %@",error.localizedDescription);
        }
    }];
}

- (IBAction)loginButtonTapped:(id)sender {
    
    NSString *email = self.textFieldEmail.text;
    NSString *password = self.textFieldPassword.text;
    
    if (email.length > 0 && password.length > 0) {
        
        [[FIRAuth auth]createUserWithEmail:email password:password completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
            
            if (error == nil) {
                NSLog(@"User created.");
                [self login:email password:password];

            }
            else {
                NSLog(@"ERROR : %@",error.localizedDescription);

            }
            
        }];
    }
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.textFieldEmail) {
        [textField resignFirstResponder];
        [self.textFieldPassword becomeFirstResponder];
        return true;
    }
    [textField resignFirstResponder];
    return true;
}

@end

//
//  ViewController.m
//  Grow
//
//  Created by Claire Jencks on 4/14/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "SignUpViewController.h"
#import <Parse/Parse.h>

@interface SignUpViewController ()

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation SignUpViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onSignUpButtonPressed:(id)sender
{
    [self createNewUser];
}

- (IBAction)onCancelButtonPressed:(id)sender
{

}

- (IBAction)onEndEditingButtonPressed:(id)sender
{
    [self.usernameTextField endEditing:YES];
    [self.passwordTextField endEditing:YES];
    [self.emailTextField endEditing:YES];
}

- (void)createNewUser
{
    PFUser *user = [PFUser user];
    user.username = self.usernameTextField.text;
    user.password = self.passwordTextField.text;
    user.email = self.emailTextField.text;

    [user signUpInBackgroundWithTarget:self selector:@selector(handleSignUp:error:)];
}

- (void)handleSignUp:(NSNumber *)result error:(NSError *)error
{
    if (!error)
    {
        // segue to tab bar controller
    }
    else
    {
        UIAlertView *signUpErrorAlert = [[UIAlertView alloc] initWithTitle:@"Sign In Failed" message:[NSString stringWithFormat:@"%@",[error userInfo][@"error"]] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [signUpErrorAlert show];
    }
}

@end

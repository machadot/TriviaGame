//
//  Sign_Up_ViewController.m
//  Triva
//
//  Created by Xcode User on 2016-11-07.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "Sign_Up_ViewController.h"
#import "AppDelegate.h"

@interface Sign_Up_ViewController ()

@end

@implementation Sign_Up_ViewController
@synthesize tfFirstName,tfLastName,tfUserName,tfEmail,tfPasword,tfDateOFBirth,btSignV_SignUp; // creating settor and getors

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)signUpNOw:(id)sender
{

    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UserData *user = [[UserData alloc] initWithData:tfLastName.text theFristn:tfFirstName.text theUsern:tfUserName.text thePassW:tfPasword.text theEmail:tfEmail.text theDateofB:tfDateOFBirth.text];
    
    BOOL returnCode = [mainDelegate insertIntoDatabase:user]; // checks if the data has being saved into the databaes
    
    NSString *returnMsg = @"Person Added"; // string varible to send the user an update
    
    if(returnCode == NO)
        returnMsg = @"Person Add Failed"; // string varible to send the user an update
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Trivia Game Insert" message:returnMsg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    //[self performSegueWithIdentifier:@"SignUpExit" sender:self];
    [self addPerson]; // calling the add person function
    
    // Remeber to do a check staement for sigin
//    [self performSegueWithIdentifier:@"SignUP_to_SignINSegway" sender:self];
    // creating a segway identfier for a check statement

}
-(void) addPerson
{
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UserData *user = [[UserData alloc] initWithData:tfLastName.text theFristn:tfFirstName.text theUsern:tfUserName.text thePassW:tfPasword.text theEmail:tfEmail.text theDateofB:tfDateOFBirth.text];
    
    BOOL returnCode = [mainDelegate insertIntoDatabase:user]; // checks if the data has being saved into the databaes
    
    NSString *returnMsg = @"Person Added"; // string varible to send the user an update
    
    if(returnCode == NO)
        returnMsg = @"Person Add Failed"; // string varible to send the user an update
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"SQLite Insert" message:returnMsg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
   // [self performSegueWithIdentifier:@"SignUpExit" sender:self];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

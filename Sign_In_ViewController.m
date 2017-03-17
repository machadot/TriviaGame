//
//  Sign_In_ViewController.m
//  Triva
//
//  Created by Xcode User on 2016-11-07.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "Sign_In_ViewController.h"
#import "AppDelegate.h"
#import "UserData.h"

@interface Sign_In_ViewController ()

@end

@implementation Sign_In_ViewController
@synthesize tfSignInPage_Username,tfSignInPage_Password,btSignInpage_SignIN;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)signIN_Now:(id)sender// this will request  and compare the infomation inthe database
{
   
    {
        int login = 0 ;
        
        AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        //NSInteger lenght =(sizeof (mainDelegate.User))/(sizeof(mainDelegate.User[0]));
        NSLog(@"%ld", [mainDelegate.User count] );
        for(int i = 0; i<[mainDelegate.User count];i++)
        {
            UserData *people = [mainDelegate.User objectAtIndex:i];
            
            if ([tfSignInPage_Username.text isEqualToString:people.UserName] && [tfSignInPage_Password.text isEqualToString:people.Password])
            {
                login = 1;
                [self performSegueWithIdentifier:@"segwayStarGame" sender:self];
                
            }
            else
            {
                login = 0;
            }
        }
        if (login == 0) {
            
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error!" message:@" Username and/or Pasword do not mmatch our records " preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
            
            [alert addAction:ok];
            [self presentViewController:alert animated:YES completion:nil];
        }
        
        
    }
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

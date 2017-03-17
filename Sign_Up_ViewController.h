//
//  Sign_Up_ViewController.h
//  Triva
//
//  Created by Xcode User on 2016-11-07.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface Sign_Up_ViewController : UIViewController
{
    IBOutlet UITextField *tfFirstName, *tfLastName, *tfPasword ,*tfUserName, *tfEmail, *tfDateOFBirth;
    IBOutlet UIButton *btSignV_SignUp;
}

@property (nonatomic,strong) UITextField *tfFirstName, *tfLastName, *tfPasword,*tfUserName, *tfEmail, *tfDateOFBirth;
@property UIButton *btSignV_SignUp;

@end

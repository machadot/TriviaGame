//
//  Sign_In_ViewController.h
//  Triva
//
//  Created by Xcode User on 2016-11-07.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface Sign_In_ViewController : UIViewController
{
    IBOutlet UITextField  *tfSignInPage_Username, *tfSignInPage_Password;
    IBOutlet UIButton *btSignInpage_SignIN;
}

@property (nonatomic,strong)UITextField  *tfSignInPage_Username, *tfSignInPage_Password;
@property(nonatomic,strong)UIButton*btSignInpage_SignIN;

@end

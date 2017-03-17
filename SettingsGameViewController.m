//
//  SettingsGameViewController.m
//  Triva
//
//  Created by Xcode User on 2016-11-15.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "SettingsGameViewController.h"
#import "ViewController.h"
@interface SettingsGameViewController ()

@end

@implementation SettingsGameViewController
@synthesize slVolume,lbVolume;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)sliderValueChanged:(id)sender
{
    [self updateLabel];
}

-(void)updateLabel
{
    float vol = slVolume.value;
    NSString *strVol = [NSString stringWithFormat:@"%f%%",vol];
    [lbVolume setText:strVol];
    ViewController *vc = [[ViewController alloc] init];
    [vc setVolume:vol];
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

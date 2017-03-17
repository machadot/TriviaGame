//
//  PopCultureViewController.h
//  TriviaGame
//
//  Created by Xcode User on 2016-11-14.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
@interface PopCultureViewController : UIViewController
{
    IBOutlet UILabel *question;
    IBOutlet UILabel *lblScore;
    IBOutlet UIButton *ans1;
    IBOutlet UIButton *ans2;
    IBOutlet UIButton *ans3;
    IBOutlet UIButton *ans4;
    IBOutlet UINavigationBar *navBar;
    AVAudioPlayer *audio;
    NSInteger lives;
    NSInteger score;
    NSInteger level;
}
@property(strong, nonatomic) IBOutlet UILabel *question;
@property(strong, nonatomic) IBOutlet UILabel *lblScore;
@property(strong, nonatomic) IBOutlet UIButton *ans1;
@property(strong, nonatomic) IBOutlet UIButton *ans2;
@property(strong, nonatomic) IBOutlet UIButton *ans3;
@property(strong, nonatomic) IBOutlet UIButton *ans4;
@property (nonatomic, strong) AVAudioPlayer *audio;
@property(strong, nonatomic) IBOutlet UINavigationBar *navBar;
@property NSInteger lives;
@property NSInteger score;
@property NSInteger level;
@end

//
//  ViewController.h
//  TriviaGame
//
//  Created by Xcode User on 2016-11-06.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import "Social/Social.h"
@interface ViewController : UIViewController
{
    AVAudioPlayer *audio;
    AVAudioPlayer *bgm;
    IBOutlet UIButton *Tweet;
   
}
@property (nonatomic, strong) AVAudioPlayer *audio;
@property (nonatomic, strong) AVAudioPlayer *bgm;
@property (nonatomic, strong) UIButton *Tweet;

-(void)setVolume:(CGFloat)vol;
@end


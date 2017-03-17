//
//  CategoryViewController.h
//  TriviaGame
//
//  Created by Xcode User on 2016-11-06.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface CategoryViewController : UIViewController
{
    AVAudioPlayer *audio;
}
@property (nonatomic, strong) AVAudioPlayer *audio;
@end

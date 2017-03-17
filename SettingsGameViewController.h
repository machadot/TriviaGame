//
//  SettingsGameViewController.h
//  Triva
//
//  Created by Xcode User on 2016-11-15.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsGameViewController : UIViewController
{
    IBOutlet UISlider *slVolume;
    IBOutlet UILabel *lbVolume;
}
@property(nonatomic, strong) IBOutlet UISlider *slVolume;
@property(nonatomic, strong) IBOutlet UILabel *lbVolume;
@end

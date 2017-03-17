//
//  AboutViewController.h
//  TriviaGame
//
//  Created by Xcode User on 2016-11-14.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController<UIWebViewDelegate>
{
    IBOutlet UIWebView *wbPage;
    IBOutlet UIActivityIndicatorView *activity;
}
@property(nonatomic, strong) IBOutlet UIWebView *wbPage;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activity;
@end

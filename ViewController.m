//
//  ViewController.m
//  TriviaGame
//
//  Created by Xcode User on 2016-11-06.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize audio,bgm,Tweet;

-(void)audioDidPlay
{
    //Sets up button sfx
    NSString *filePath = [NSString stringWithFormat:@"%@/%@.wav", [[NSBundle mainBundle] resourcePath], @"smb_coin"];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    audio.numberOfLoops = 0;
    [audio play];
}
-(IBAction)buttonDidPress:(id)sender
{
    //Plays SFX on button press
    [self audioDidPlay];
}
-(IBAction)unwindToThisViewController:(UIStoryboardSegue *)sender{
    
}
- (void)viewDidLoad {
    //Plays bgm on start
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *filePath = [NSString stringWithFormat:@"%@/%@.mp3", [[NSBundle mainBundle] resourcePath], @"smb_athletic"];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    bgm = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    bgm.numberOfLoops = -1;
    [bgm play];
}
-(void)setVolume:(CGFloat)vol
{
    //Function to set volume from settings
    [self.bgm setVolume:vol];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// This part the code is for the twitter.
-(IBAction)TweetPressed{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"This is a tweet!"];
        [self presentViewController:tweetSheet animated:YES completion:nil];
        
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Sorry"
                                  message:@"You can't send a tweet right now, make sure your device has an internet connection and you have at least one Twitter account setup"
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }
    
}
@end

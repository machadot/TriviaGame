//
//  CategoryViewController.m
//  TriviaGame
//
//  Created by Xcode User on 2016-11-06.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import "CategoryViewController.h"

@interface CategoryViewController ()

@end

@implementation CategoryViewController
@synthesize audio;

-(IBAction)buttonDidPress:(id)sender
{
    //IBAction for audio to play on button press
    [self audioDidPlay];
}
-(void)audioDidPlay
{
    //Audio Player settings for button press SFX
    NSString *filePath = [NSString stringWithFormat:@"%@/%@.wav", [[NSBundle mainBundle] resourcePath], @"smb_coin"];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    audio.numberOfLoops = 0;
    [audio play];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

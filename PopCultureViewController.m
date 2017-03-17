//
//  PopCultureViewController.m
//  TriviaGame
//
//  Created by Xcode User on 2016-11-14.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import "PopCultureViewController.h"
#import "AppDelegate.h"
@interface PopCultureViewController ()

@end

@implementation PopCultureViewController
@synthesize question,ans4,ans3,ans2,ans1,audio,lives,score,lblScore,level,navBar;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Loads default values and first question
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    lives = 2;
    score = 0;
    level = 1;
    NSString *q = [mainDelegate.pcquestion objectForKey:[NSString stringWithFormat:@"%ld",level]];
    NSString *a1 = [mainDelegate.pcans1 objectForKey:[NSString stringWithFormat:@"%ld",level]];
    NSString *a2 = [mainDelegate.pcans2 objectForKey:[NSString stringWithFormat:@"%ld",level]];
    NSString *a3 = [mainDelegate.pcans3 objectForKey:[NSString stringWithFormat:@"%ld",level]];
    NSString *a4 = [mainDelegate.pcans4 objectForKey:[NSString stringWithFormat:@"%ld",level]];
    [lblScore setText:[NSString stringWithFormat:@"%ld",score]];
    navBar.topItem.title = @"Pop Culture";
    
    [question setText:q];
    [ans1 setTitle:a1 forState:UIControlStateNormal];
    [ans2 setTitle:a2 forState:UIControlStateNormal];
    [ans3 setTitle:a3 forState:UIControlStateNormal];
    [ans4 setTitle:a4 forState:UIControlStateNormal];
}
-(void)checkAnswer:(NSString *)guess correct:(NSString *)cor
{
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if (guess == cor)
    {
        //Checks if Answer is correct and increments score and level
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"RIGHT!" message:@"You guessed Correct!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        score = score + 10;
        level = level + 1;
        [self nextLevel];
    }
    else if (lives != 0 && guess != cor)
    {
        //Removes life if wrong
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"WRONG!" message:@"You guessed wrong!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        lives = lives - 1;
    }
    else if (lives <= 0)
    {
        //Game over segue to home
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"GAME OVER" message:@"You lose!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action)
                             {
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 [mainDelegate scoreSaver:score];
                                 [self performSegueWithIdentifier:@"loseExit" sender:self];
                                 
                             }];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
-(IBAction)guess1:(id)sender
{
    //Checks if guess is correct using checkAnswer function
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *cor = [mainDelegate.pccorrect objectForKey:[NSString stringWithFormat:@"%ld",level]];
    [self checkAnswer:@"1" correct:cor];
    [self audioDidPlay];
    [lblScore setText:[NSString stringWithFormat:@"%ld",score]];
}
-(IBAction)guess2:(id)sender
{
    //Checks if guess is correct using checkAnswer function
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *cor = [mainDelegate.pccorrect objectForKey:[NSString stringWithFormat:@"%ld",level]];
    [self checkAnswer:@"2" correct:cor];
    [self audioDidPlay];
    [lblScore setText:[NSString stringWithFormat:@"%ld",score]];
}
-(IBAction)guess3:(id)sender
{
    //Checks if guess is correct using checkAnswer function
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *cor = [mainDelegate.pccorrect objectForKey:[NSString stringWithFormat:@"%ld",level]];
    [self checkAnswer:@"3" correct:cor];
    [self audioDidPlay];
    [lblScore setText:[NSString stringWithFormat:@"%ld",score]];
}
-(IBAction)guess4:(id)sender
{
    //Checks if guess is correct using checkAnswer function
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *cor = [mainDelegate.pccorrect objectForKey:[NSString stringWithFormat:@"%ld",level]];
    [self checkAnswer:@"4" correct:cor];
    [self audioDidPlay];
    [lblScore setText:[NSString stringWithFormat:@"%ld",score]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)nextLevel
{
    //Writes question to labels and buttons
    if (level >= 6)
    {
        level = 1;
    }
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *q = [mainDelegate.pcquestion objectForKey:[NSString stringWithFormat:@"%ld",level]];
    NSString *a1 = [mainDelegate.pcans1 objectForKey:[NSString stringWithFormat:@"%ld",level]];
    NSString *a2 = [mainDelegate.pcans2 objectForKey:[NSString stringWithFormat:@"%ld",level]];
    NSString *a3 = [mainDelegate.pcans3 objectForKey:[NSString stringWithFormat:@"%ld",level]];
    NSString *a4 = [mainDelegate.pcans4 objectForKey:[NSString stringWithFormat:@"%ld",level]];
    [question setText:q];
    [ans1 setTitle:a1 forState:UIControlStateNormal];
    [ans2 setTitle:a2 forState:UIControlStateNormal];
    [ans3 setTitle:a3 forState:UIControlStateNormal];
    [ans4 setTitle:a4 forState:UIControlStateNormal];
}
-(void)audioDidPlay
{
    //Sets up SFX
    NSString *filePath = [NSString stringWithFormat:@"%@/%@.wav", [[NSBundle mainBundle] resourcePath], @"smb_coin"];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    audio.numberOfLoops = 0;
    [audio play];
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

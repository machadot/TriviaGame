//
//  AboutViewController.m
//  TriviaGame
//
//  Created by Xcode User on 2016-11-14.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController
@synthesize wbPage,activity;
- (void)viewDidLoad {
    //Loads webpage for about page
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *urlAddress = [NSURL URLWithString:@"https://www.google.ca"];
    NSURLRequest *url = [NSURLRequest requestWithURL:urlAddress];
    [wbPage loadRequest:url];
}
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    //Animates activity indicator
    [activity setHidden:NO];
    [activity startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    //Hides activity indicator
    [activity setHidden:YES];
    [activity stopAnimating];
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

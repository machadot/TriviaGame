//
//  AppDelegate.h
//  TriviaGame
//
//  Created by Xcode User on 2016-11-06.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserData.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    NSMutableDictionary *question;
    NSMutableDictionary *ans1;
    NSMutableDictionary *ans2;
    NSMutableDictionary *ans3;
    NSMutableDictionary *ans4;
    NSMutableDictionary *correct;
    NSMutableDictionary *pcquestion;
    NSMutableDictionary *pcans1;
    NSMutableDictionary *pcans2;
    NSMutableDictionary *pcans3;
    NSMutableDictionary *pcans4;
    NSMutableDictionary *pccorrect;
    NSMutableDictionary *hquestion;
    NSMutableDictionary *hans1;
    NSMutableDictionary *hans2;
    NSMutableDictionary *hans3;
    NSMutableDictionary *hans4;
    NSMutableDictionary *hcorrect;
    NSMutableDictionary *gquestion;
    NSMutableDictionary *gans1;
    NSMutableDictionary *gans2;
    NSMutableDictionary *gans3;
    NSMutableDictionary *gans4;
    NSMutableDictionary *gcorrect;
    NSMutableArray *highScores;
    NSInteger *score;
    NSString *databaseName;
    NSString *databasePath;
    NSMutableArray *User;
}
@property(strong, nonatomic) NSMutableDictionary *question;
@property(strong, nonatomic) NSMutableDictionary *ans1;
@property(strong, nonatomic) NSMutableDictionary *ans2;
@property(strong, nonatomic) NSMutableDictionary *ans3;
@property(strong, nonatomic) NSMutableDictionary *ans4;
@property(strong, nonatomic) NSMutableDictionary *correct;
@property(strong, nonatomic) NSMutableDictionary *pcquestion;
@property(strong, nonatomic) NSMutableDictionary *pcans1;
@property(strong, nonatomic) NSMutableDictionary *pcans2;
@property(strong, nonatomic) NSMutableDictionary *pcans3;
@property(strong, nonatomic) NSMutableDictionary *pcans4;
@property(strong, nonatomic) NSMutableDictionary *pccorrect;
@property(strong, nonatomic) NSMutableDictionary *hquestion;
@property(strong, nonatomic) NSMutableDictionary *hans1;
@property(strong, nonatomic) NSMutableDictionary *hans2;
@property(strong, nonatomic) NSMutableDictionary *hans3;
@property(strong, nonatomic) NSMutableDictionary *hans4;
@property(strong, nonatomic) NSMutableDictionary *hcorrect;
@property(strong, nonatomic) NSMutableDictionary *gquestion;
@property(strong, nonatomic) NSMutableDictionary *gans1;
@property(strong, nonatomic) NSMutableDictionary *gans2;
@property(strong, nonatomic) NSMutableDictionary *gans3;
@property(strong, nonatomic) NSMutableDictionary *gans4;
@property(strong, nonatomic) NSMutableDictionary *gcorrect;
@property(strong, nonatomic) NSMutableArray *highScores;
@property NSInteger *score;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *databaseName;
@property (strong, nonatomic) NSString *databasePath;
@property (strong, nonatomic) NSMutableArray *User;
-(void)readDataFromDatabase;
-(BOOL)insertIntoDatabase:(UserData *)user;
-(void)scoreSaver:(NSInteger)scores;

@end


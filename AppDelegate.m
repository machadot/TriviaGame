//
//  AppDelegate.m
//  TriviaGame
//
//  Created by Xcode User on 2016-11-06.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import "AppDelegate.h"
#import <sqlite3.h>

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize question,ans1,ans2,ans3,ans4,correct,score,pcans1,pcans2,pcans3,pcans4,pccorrect,pcquestion,hans1,hans2,hans3,hans4,hcorrect,hquestion,gans1,gans2,gans3,gans4,gcorrect,gquestion,highScores;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //Sets the dictionaries for questions
    self.question = [NSMutableDictionary dictionary];
    self.ans1 = [NSMutableDictionary dictionary];
    self.ans2 = [NSMutableDictionary dictionary];
    self.ans3 = [NSMutableDictionary dictionary];
    self.ans4 = [NSMutableDictionary dictionary];
    self.correct = [NSMutableDictionary dictionary];
    self.pcquestion = [NSMutableDictionary dictionary];
    self.pcans1 = [NSMutableDictionary dictionary];
    self.pcans2 = [NSMutableDictionary dictionary];
    self.pcans3 = [NSMutableDictionary dictionary];
    self.pcans4 = [NSMutableDictionary dictionary];
    self.pccorrect = [NSMutableDictionary dictionary];
    self.hquestion = [NSMutableDictionary dictionary];
    self.hans1 = [NSMutableDictionary dictionary];
    self.hans2 = [NSMutableDictionary dictionary];
    self.hans3 = [NSMutableDictionary dictionary];
    self.hans4 = [NSMutableDictionary dictionary];
    self.hcorrect = [NSMutableDictionary dictionary];
    self.gquestion = [NSMutableDictionary dictionary];
    self.gans1 = [NSMutableDictionary dictionary];
    self.gans2 = [NSMutableDictionary dictionary];
    self.gans3 = [NSMutableDictionary dictionary];
    self.gans4 = [NSMutableDictionary dictionary];
    self.gcorrect = [NSMutableDictionary dictionary];
    self.highScores = [[NSMutableArray alloc] initWithObjects:@"0", nil];
    
#pragma mark - Sports
    //Loads the questions into the sports dictionaries
    [question setObject:@"What is the highest score possible in 10 pin bowling?" forKey:@"1"];
    [ans1 setObject:@"200" forKey:@"1"];
    [ans2 setObject:@"300" forKey:@"1"];
    [ans3 setObject:@"400" forKey:@"1"];
    [ans4 setObject:@"500" forKey:@"1"];
    [correct setObject:@"2" forKey:@"1"];
    
    [question setObject:@"What is the regulation height for a basketball hoop" forKey:@"2"];
    [ans1 setObject:@"20 feet" forKey:@"2"];
    [ans2 setObject:@"15 feet" forKey:@"2"];
    [ans3 setObject:@"25 feet" forKey:@"2"];
    [ans4 setObject:@"10 feet" forKey:@"2"];
    [correct setObject:@"4" forKey:@"2"];
    
    [question setObject:@"What team won the first Super Bowl?" forKey:@"3"];
    [ans1 setObject:@"Carolina Panthers" forKey:@"3"];
    [ans2 setObject:@"Denver Broncos" forKey:@"3"];
    [ans3 setObject:@"Green Bay Packers" forKey:@"3"];
    [ans4 setObject:@"Oakland Raiders" forKey:@"3"];
    [correct setObject:@"3" forKey:@"3"];
    
    [question setObject:@"When was the last year the Toronto Blue Jays won the world series?" forKey:@"4"];
    [ans1 setObject:@"1995" forKey:@"4"];
    [ans2 setObject:@"1994" forKey:@"4"];
    [ans3 setObject:@"1993" forKey:@"4"];
    [ans4 setObject:@"1992" forKey:@"4"];
    [correct setObject:@"3" forKey:@"4"];
    
    [question setObject:@"When was the last year the Toronto Maple Leafs won the Stanley Cup?" forKey:@"5"];
    [ans1 setObject:@"1999" forKey:@"5"];
    [ans2 setObject:@"1987" forKey:@"5"];
    [ans3 setObject:@"1922" forKey:@"5"];
    [ans4 setObject:@"1967" forKey:@"5"];
    [correct setObject:@"4" forKey:@"5"];
    
#pragma mark - Pop Culture
    //Loads the questions into the pop culture dictionaries
    [pcquestion setObject:@"What year did the original Star Wars release?" forKey:@"1"];
    [pcans1 setObject:@"1975" forKey:@"1"];
    [pcans2 setObject:@"1980" forKey:@"1"];
    [pcans3 setObject:@"1982" forKey:@"1"];
    [pcans4 setObject:@"1977" forKey:@"1"];
    [pccorrect setObject:@"4" forKey:@"1"];
    
    [pcquestion setObject:@"Which actor plays the role of Nick Fury in the Avengers movies?" forKey:@"2"];
    [pcans1 setObject:@"Morgan Freeman" forKey:@"2"];
    [pcans2 setObject:@"Samuel L Jackson" forKey:@"2"];
    [pcans3 setObject:@"Jeremy Reiner" forKey:@"2"];
    [pcans4 setObject:@"Nicholas Cage" forKey:@"2"];
    [pccorrect setObject:@"2" forKey:@"2"];
    
    [pcquestion setObject:@"What year did Blank Banshee release his album MEGA?" forKey:@"3"];
    [pcans1 setObject:@"2013" forKey:@"3"];
    [pcans2 setObject:@"2014" forKey:@"3"];
    [pcans3 setObject:@"2015" forKey:@"3"];
    [pcans4 setObject:@"2016" forKey:@"3"];
    [pccorrect setObject:@"4" forKey:@"3"];
    
    [pcquestion setObject:@"Who is the main actor in John Wick?" forKey:@"4"];
    [pcans1 setObject:@"Matt Damon" forKey:@"4"];
    [pcans2 setObject:@"Nicholas Cage" forKey:@"4"];
    [pcans3 setObject:@"Keanu Reeves" forKey:@"4"];
    [pcans4 setObject:@"Michael J Fox" forKey:@"4"];
    [pccorrect setObject:@"3" forKey:@"4"];
    
    [pcquestion setObject:@"What year did the first Back to the Future movie release?" forKey:@"5"];
    [pcans1 setObject:@"1985" forKey:@"5"];
    [pcans2 setObject:@"1986" forKey:@"5"];
    [pcans3 setObject:@"1987" forKey:@"5"];
    [pcans4 setObject:@"1988" forKey:@"5"];
    [pccorrect setObject:@"1" forKey:@"5"];
    
#pragma mark - History
    //Loads the questions into the history dictionaries
    [hquestion setObject:@"Who was the first Canadian prime minister?" forKey:@"1"];
    [hans1 setObject:@"Justin Trudeau" forKey:@"1"];
    [hans2 setObject:@"John Abbott" forKey:@"1"];
    [hans3 setObject:@"Stephen Harper" forKey:@"1"];
    [hans4 setObject:@"John A. Macdonald" forKey:@"1"];
    [hcorrect setObject:@"4" forKey:@"1"];
    
    [hquestion setObject:@"What was the last territory to join Canada?" forKey:@"2"];
    [hans1 setObject:@"Northwest Territories" forKey:@"2"];
    [hans2 setObject:@"Yukon" forKey:@"2"];
    [hans3 setObject:@"Nunavut" forKey:@"2"];
    [hans4 setObject:@"Alaska" forKey:@"2"];
    [hcorrect setObject:@"3" forKey:@"2"];
    
    [hquestion setObject:@"What year did World War II end?" forKey:@"3"];
    [hans1 setObject:@"1945" forKey:@"3"];
    [hans2 setObject:@"1944" forKey:@"3"];
    [hans3 setObject:@"1943" forKey:@"3"];
    [hans4 setObject:@"1942" forKey:@"3"];
    [hcorrect setObject:@"1" forKey:@"3"];
    
    [hquestion setObject:@"Which of these was a leader in the Axis during WWII?" forKey:@"4"];
    [hans1 setObject:@"Stalin" forKey:@"4"];
    [hans2 setObject:@"Mussolini" forKey:@"4"];
    [hans3 setObject:@"Churchill" forKey:@"4"];
    [hans4 setObject:@"Roosevelt" forKey:@"4"];
    [hcorrect setObject:@"2" forKey:@"4"];
    
    [hquestion setObject:@"What day was Canada Founded?" forKey:@"5"];
    [hans1 setObject:@"July 4, 1875" forKey:@"5"];
    [hans2 setObject:@"July 3, 1863" forKey:@"5"];
    [hans3 setObject:@"July 2, 1872" forKey:@"5"];
    [hans4 setObject:@"July 1, 1867" forKey:@"5"];
    [hcorrect setObject:@"4" forKey:@"5"];
    
#pragma mark - Gaming
    //Loads the questions into the gaming dictionaries
    [gquestion setObject:@"What was the Nintendo Character Mario originally named?" forKey:@"1"];
    [gans1 setObject:@"Luigi" forKey:@"1"];
    [gans2 setObject:@"Donkey Kong" forKey:@"1"];
    [gans3 setObject:@"Plumber" forKey:@"1"];
    [gans4 setObject:@"Jumpman" forKey:@"1"];
    [gcorrect setObject:@"4" forKey:@"1"];
    
    [gquestion setObject:@"What year did the NES release in North America?" forKey:@"2"];
    [gans1 setObject:@"1984" forKey:@"2"];
    [gans2 setObject:@"1985" forKey:@"2"];
    [gans3 setObject:@"1986" forKey:@"2"];
    [gans4 setObject:@"1987" forKey:@"2"];
    [gcorrect setObject:@"2" forKey:@"2"];
    
    [gquestion setObject:@"What feature was removed from Banjo Kazooie?" forKey:@"3"];
    [gans1 setObject:@"Cart Swop" forKey:@"3"];
    [gans2 setObject:@"Stop 'N' Go" forKey:@"3"];
    [gans3 setObject:@"Stop 'N' Swop" forKey:@"3"];
    [gans4 setObject:@"Swopper" forKey:@"3"];
    [gcorrect setObject:@"3" forKey:@"3"];
    
    [gquestion setObject:@"What is Blanka from Street Fighter's original name?" forKey:@"4"];
    [gans1 setObject:@"Jimmy" forKey:@"4"];
    [gans2 setObject:@"Johnny" forKey:@"4"];
    [gans3 setObject:@"Timmy" forKey:@"4"];
    [gans4 setObject:@"Juan" forKey:@"4"];
    [gcorrect setObject:@"1" forKey:@"4"];
    
    [gquestion setObject:@"Hidden in the code of Goldeneye 007 for Nintendo 64 exists an emulator for what 1980s home computer?" forKey:@"5"];
    [gans1 setObject:@"Commodore 64" forKey:@"5"];
    [gans2 setObject:@"Atari 800" forKey:@"5"];
    [gans3 setObject:@"ZX Spectrum" forKey:@"5"];
    [gans4 setObject:@"Apple II" forKey:@"5"];
    [gcorrect setObject:@"3" forKey:@"5"];
   
    //Sefa
    self.User = [[NSMutableArray alloc]init];
    self.databaseName = @"MyTrivia.db";
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    self.databasePath = [documentsDir stringByAppendingPathComponent:self.databaseName];
    [self checkAndCreateDatabase];
    [self readDataFromDatabase];
    return YES;
}
-(void)scoreSaver:(NSInteger)scores
{
    //Saves highscore into an array
    [highScores addObject:[NSString stringWithFormat:@"%ld",scores]];
}
//Sefa Methods
-(void)checkAndCreateDatabase // to determine if a database exist and the path for it if not create a path
{
    BOOL success;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    success = [fileManager fileExistsAtPath:self.databasePath]; // if a pathe exits (YES/NO)
    if(success == true) return;
    // if(success == YES) create a new path from the device
    NSString *databasePathFromApp = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:self.databaseName];
    [fileManager copyItemAtPath:databasePathFromApp toPath:self.databasePath error:nil];
    
    return;
}

-(void)readDataFromDatabase // reading the infoemation with in the database
{
    [self.User removeAllObjects];
    sqlite3 *database; // creating a sqlite veribale
    if(sqlite3_open([self.databasePath UTF8String], &database) == SQLITE_OK)
    {
        char *sqlStatement = "select * from Users";
        sqlite3_stmt *compiledStatement;
        
        if(sqlite3_prepare_v2(database, sqlStatement, -1, &compiledStatement, NULL)== SQLITE_OK)
        {
            while(sqlite3_step(compiledStatement) == SQLITE_ROW)
            {
                char *l = (char *)sqlite3_column_text(compiledStatement, 1);
                char *f = (char *)sqlite3_column_text(compiledStatement, 2);
                char *u = (char *)sqlite3_column_text(compiledStatement, 3);
                char *p = (char *)sqlite3_column_text(compiledStatement, 4);
                char *e = (char *)sqlite3_column_text(compiledStatement, 5);
                char *d = (char *)sqlite3_column_text(compiledStatement, 6);
                
                NSString *Last_Name     =[NSString stringWithUTF8String:l];
                NSString *First_Name    =[NSString stringWithUTF8String:f];
                NSString *UserName      =[NSString stringWithUTF8String:u];
                NSString *Password      =[NSString stringWithUTF8String:p];
                NSString *Email         =[NSString stringWithUTF8String:e];
                NSString *Date_of_Brith =[NSString stringWithUTF8String:d];
                
                UserData *data =[[UserData alloc] initWithData:Last_Name theFristn:First_Name theUsern:UserName thePassW:Password theEmail:Email theDateofB:Date_of_Brith];
            }
        }
        sqlite3_finalize(compiledStatement);
    }
    sqlite3_close(database);
}

-(BOOL)insertIntoDatabase:(UserData *)person
{
    sqlite3 *database;
    BOOL returnCode = YES;
    
    if(sqlite3_open([self.databasePath UTF8String], &database) == SQLITE_OK)
    {
        char *sqlStatement = "insert into Users values(NULL, ?, ?, ?, ?, ?, ?)";
        sqlite3_stmt *compiledStatement;
        
        if(sqlite3_prepare_v2(database, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK)
        {
            sqlite3_bind_text(compiledStatement, 1, [person.Last_Name  UTF8String], -1, SQLITE_TRANSIENT);
            sqlite3_bind_text(compiledStatement, 2, [person.First_Name UTF8String], -1, SQLITE_TRANSIENT);
            sqlite3_bind_text(compiledStatement, 3, [person.UserName   UTF8String], -1, SQLITE_TRANSIENT);
            sqlite3_bind_text(compiledStatement, 4, [person.Password   UTF8String], -1, SQLITE_TRANSIENT);
            sqlite3_bind_text(compiledStatement, 5, [person.Email      UTF8String], -1, SQLITE_TRANSIENT);
            sqlite3_bind_text(compiledStatement, 6, [person.Date_of_Brith UTF8String], -1,SQLITE_TRANSIENT);
        }
        
        if(sqlite3_step(compiledStatement) != SQLITE_DONE)
        {
            NSLog(@"Error: %s", sqlite3_errmsg(database));
            returnCode = NO;
        }
        else
        {
            NSLog(@"Insert into row id = %lld", sqlite3_last_insert_rowid(database));
        }
        sqlite3_finalize(compiledStatement);
    }
    
    sqlite3_close(database);
    return returnCode;
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

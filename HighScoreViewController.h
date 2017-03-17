//
//  HighScoreViewController.h
//  TriviaGame
//
//  Created by Xcode User on 2016-11-06.
//  Copyright © 2016 Tyler Machado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HighScoreViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *listData;
    IBOutlet UITableView *tableview;
}
@property(strong, nonatomic) NSArray *listData;
@property(strong, nonatomic) IBOutlet UITableView *tableview;
@end

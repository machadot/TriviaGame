//
//  UserData.h
//  Triva
//
//  Created by Xcode User on 2016-11-29.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserData : NSObject
{
    NSString *Last_Name;
    NSString *First_Name;
    NSString *UserName;
    NSString *Password;
    NSString *Email;
    NSString *Date_of_Brith;
}
@property(strong, nonatomic)NSString *Last_Name;
@property(strong, nonatomic)NSString *First_Name;
@property(strong, nonatomic)NSString *UserName;
@property(strong, nonatomic)NSString *Password;
@property(strong, nonatomic)NSString *Email;
@property(strong, nonatomic)NSString *Date_of_Brith;

-(id)initWithData:(NSString *)l theFristn:(NSString *)f theUsern:(NSString *)u thePassW:(NSString *)p theEmail:(NSString *)e theDateofB:(NSString *)d;

@end

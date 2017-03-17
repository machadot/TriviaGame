//
//  UserData.m
//  Triva
//
//  Created by Xcode User on 2016-11-29.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "UserData.h"

@implementation UserData
@synthesize Last_Name,First_Name,UserName,Password,Email,Date_of_Brith;

-(id)initWithData:(NSString *)l theFristn:(NSString *)f theUsern:(NSString *)u thePassW:(NSString *)p theEmail:(NSString *)e theDateofB:(NSString *)d
{
    if(self = [super init])
    {
        [self setLast_Name:l];
        [self setFirst_Name:f];
        [self setUserName:u];
        [self setPassword:p];
        [self setEmail:e];
        [self setDate_of_Brith:d];

    }
    return self;
}
@end

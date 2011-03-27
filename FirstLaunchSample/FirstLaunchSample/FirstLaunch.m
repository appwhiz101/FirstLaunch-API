//
//  FirstLaunch.m
//  FirstLaunch API
//
//  Created by Charlie Fish on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstLaunch.h"


@implementation FirstLaunch

-(BOOL)isFirstLaunch{
    NSUserDefaults *save=[NSUserDefaults standardUserDefaults];
    BOOL first=[save boolForKey:@"firstlaunch"];
    return first;
}
-(void)setFirstLaunch:(BOOL)firstlaunch{
    NSUserDefaults *save=[NSUserDefaults standardUserDefaults];
    [save setBool:firstlaunch forKey:@"firstlaunch"];
}


@end

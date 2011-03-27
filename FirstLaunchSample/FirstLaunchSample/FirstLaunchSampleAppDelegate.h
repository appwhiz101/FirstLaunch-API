//
//  FirstLaunchSampleAppDelegate.h
//  FirstLaunchSample
//
//  Created by Charlie Fish on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstLaunchSampleViewController;

@interface FirstLaunchSampleAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FirstLaunchSampleViewController *viewController;

@end

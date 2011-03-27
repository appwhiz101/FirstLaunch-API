//
//  FirstLaunchSampleViewController.m
//  FirstLaunchSample
//
//  Created by Charlie Fish on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstLaunchSampleViewController.h"
#import "FirstLaunch.h"
@implementation FirstLaunchSampleViewController

-(void)viewDidLoad{
    FirstLaunch *fl = [[FirstLaunch alloc] init];
    BOOL isFL = [fl isFirstLaunch];
    if (!isFL==FALSE) {
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"This is the First Launch" delegate:self cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
        [av show];
        [av release];
    }
    else{
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"This is NOT THE First Launch" delegate:self cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
        [av show];
        [av release];
    }
    [fl setFirstLaunch:FALSE];
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)refresh:(id)sender {
    FirstLaunch *fl = [[FirstLaunch alloc] init];
    BOOL isFL = [fl isFirstLaunch];
    if (!isFL==FALSE) {
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"This is the First Launch" delegate:self cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
        [av show];
        [av release];
    }
    else{
        UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"This is NOT THE First Launch" delegate:self cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
        [av show];
        [av release];
    }
    [fl setFirstLaunch:FALSE];

}

- (IBAction)reset:(id)sender {
    FirstLaunch *fl = [[FirstLaunch alloc] init];
    [fl setFirstLaunch:TRUE];
}
@end

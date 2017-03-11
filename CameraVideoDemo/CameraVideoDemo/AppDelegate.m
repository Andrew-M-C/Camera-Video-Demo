//
//  AppDelegate.m
//  CameraVideoDemo
//
//  Created by Andrew's MAC on 2017-11-03.
//  Copyright © 2017 Andrew Chang. All rights reserved.
//

#import "AppDelegate.h"

#import "AMCNcCameraVideoViewController.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@property (nonatomic, retain) AMCNcCameraVideoViewController *videoViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
	self.videoViewController = [[AMCNcCameraVideoViewController alloc] initWithDefaultNibAndBundle];
	[self.window.contentView addSubview:self.videoViewController.view];
	
	[self.videoViewController.view setFrame:self.window.contentView.frame];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
	return YES;
}


@end

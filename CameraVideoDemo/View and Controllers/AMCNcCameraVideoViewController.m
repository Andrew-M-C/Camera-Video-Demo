//
//  AMCNcCameraVideoViewController.m
//  CameraVideoDemo
//
//  Created by Andrew's MAC on 2017-11-03.
//  Copyright © 2017 Andrew Chang. All rights reserved.
//

#import "AMCNcCameraVideoViewController.h"
#import "AMCTools.h"



@interface AMCNcCameraVideoViewController ()
@end

@implementation AMCNcCameraVideoViewController
{
//	AMCNcCameraMjpegStreaming *_cameraStreamer;
}
@dynamic view;

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.delegate = self;
//	[self.videoView setImage:nil];
	
    // Do view setup here.
}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
		// TODO:
	}
	return self;
}


- (instancetype)initWithDefaultNibAndBundle
{
	return [self initWithNibName:@"AMCNcCameraVideoView" bundle:[NSBundle mainBundle]];
}


/********/
#pragma mark - AMCNcStreamerDelegate
- (void)streamer:(AMCNcStreamer *)streamer didUpdateImage:(NSImage *)image
{
	AMCTodoMark();
}


/********/
#pragma mark - AMCViewDelegate

- (void)handleSetFrameAtView:(AMCView *)view withRect:(NSRect)frame
{
	AMCDebug(@"View set as %@", [AMCTools descriptionWithNSRect:frame]);
	frame.origin.x = 0.0;
	frame.origin.y = 0.0;
	
	self.videoView.frame = frame;
}

@end

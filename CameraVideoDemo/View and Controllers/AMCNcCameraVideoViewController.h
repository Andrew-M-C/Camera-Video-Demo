//
//  AMCNcCameraVideoViewController.h
//  CameraVideoDemo
//
//  Created by Andrew's MAC on 2017-11-03.
//  Copyright © 2017 Andrew Chang. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AMCView.h"
#import "AMCNcMjpegStreamer.h"

@interface AMCNcCameraVideoViewController : NSViewController <AMCViewDelegate, AMCNcStreamerDelegate>
- (instancetype)initWithDefaultNibAndBundle;

@property (nonatomic, assign) IBOutlet NSImageView *videoView;
@property (retain) AMCView *view;
@end

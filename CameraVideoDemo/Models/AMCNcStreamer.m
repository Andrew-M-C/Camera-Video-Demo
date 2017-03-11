//
//  AMCNcStreamer.m
//  CameraVideoDemo
//
//  Created by Andrew's MAC on 2017-11-03.
//  Copyright © 2017 Andrew Chang. All rights reserved.
//

#import "AMCNcStreamer.h"

@implementation AMCNcStreamer
{
	id<AMCNcStreamerDelegate> __weak _delegate;
}


- (instancetype)init
{
	self = [super init];
	if (self) {
		_delegate = nil;
	}
	return self;
}


- (void)setDelegate:(id<AMCNcStreamerDelegate> _Nullable)delegate
{
	if ([delegate respondsToSelector:@selector(streamer:didUpdateImage:)]) {
		_delegate = delegate;
	}
	else if (nil == delegate) {
		_delegate = nil;
	}
	else {
		// do nothing
	}
}


- (id<AMCNcStreamerDelegate> _Nullable)delegate
{
	return _delegate;
}


- (void)informImageToDelegate:(NSImage *)image
{
	if ([self delegate]) {
		[self.delegate streamer:self didUpdateImage:image];
	}
}


@end

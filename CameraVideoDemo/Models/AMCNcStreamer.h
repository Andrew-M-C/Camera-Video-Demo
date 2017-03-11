//
//  AMCNcStreamer.h
//  CameraVideoDemo
//
//  Created by Andrew's MAC on 2017-11-03.
//  Copyright © 2017 Andrew Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AMCNcStreamer;
@protocol AMCNcStreamerDelegate <NSObject>
- (void)streamer:(AMCNcStreamer * _Nonnull)streamer didUpdateImage:(NSImage * _Nullable)image;
@end

@interface AMCNcStreamer : NSObject

- (instancetype _Nullable)init;

- (void)setDelegate:(id<AMCNcStreamerDelegate> _Nullable)delegate;
- (id<AMCNcStreamerDelegate> _Nullable)delegate;

- (void)informImageToDelegate:(NSImage * _Nullable)image;		// internal method, please do not invoke outside

@end

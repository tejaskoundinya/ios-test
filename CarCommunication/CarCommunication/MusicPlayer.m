//
//  MusicPlayer.m
//  Car Communication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "MusicPlayer.h"

@implementation MusicPlayer

// Function to start playing music
- (NSString*)startPlayingMusic {
    self.message = @"Started playing music";
    [self.delegate musicPlayerDidStartPlaying:self];
    // Creating a new timer for 2 seconds
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(onTick:) userInfo:nil repeats:NO];
    return self.message;
}

// Function called upon timer completion
- (void)onTick:(NSTimer *)timer {
    [self.delegate musicPlayerDidEndPlaying:self];
}

@end

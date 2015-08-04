//
//  MusicPlayer.m
//  Car Communication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "MusicPlayer.h"

@implementation MusicPlayer

- (NSString*)startPlayingMusic {
    self.message = @"Started playing music";

    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(onTick:) userInfo:nil repeats:NO];
    return self.message;
}

- (void)onTick:(NSTimer *)timer {
//    NSLog(@"Playing done");
    [self.parentCar showToBoard];
}

@end

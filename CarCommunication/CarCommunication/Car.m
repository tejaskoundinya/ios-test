//
//  Car.m
//  Car Communication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "Car.h"
#import "MusicPlayer.h"
#import "MessageBoard.h"

@implementation Car

- (id)init {
    self.musicPlayer = [[MusicPlayer alloc]init];
    self.musicPlayer.delegate = self;
    self.messageBoard = [[MessageBoard alloc]init];
    return self;
}

- (void)playSomeMusic {
    [self.musicPlayer startPlayingMusic];
}

// Implementation of musicPlayerDidStartPlaying delcared in MusicPlayerDelegate
-(void)musicPlayerDidStartPlaying:(MusicPlayer *)musicPlayer {
    NSLog(@"Car Music Player Start");
}

// Implementation of musicPlayerDidEndPlaying delcared in MusicPlayerDelegate
-(void)musicPlayerDidEndPlaying:(MusicPlayer *)musicPlayer {
    NSLog(@"Car Music Player End");
}

@end

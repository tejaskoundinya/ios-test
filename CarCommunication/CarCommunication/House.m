//
//  House.m
//  CarCommunication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "House.h"

@implementation House

-(id)init {
    self.musicPlayer = [[MusicPlayer alloc]init];
    self.musicPlayer.delegate = self;
    return self;
}

// Function to play music
-(void)playSomeMusic {
    [self.musicPlayer startPlayingMusic];
}

// Implementation of musicPlayerDidStartPlaying delcared in MusicPlayerDelegate
-(void)musicPlayerDidStartPlaying:(MusicPlayer *)musicPlayer {
    NSLog(@"House Music Player Start");
}

// Implementation of musicPlayerDidEndPlaying delcared in MusicPlayerDelegate
-(void)musicPlayerDidEndPlaying:(MusicPlayer *)musicPlayer {
    NSLog(@"House Music Player End");
}

@end

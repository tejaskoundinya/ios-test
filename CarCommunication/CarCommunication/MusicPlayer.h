//
//  MusicPlayer.h
//  Car Communication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <Foundation/Foundation.h>

// Delcaring MusicPlayerDelegate
@protocol MusicPlayerDelegate;

@interface MusicPlayer : NSObject

@property NSString* message;
// Declaring delegate of type MusicPlayerDelegate
@property (nonatomic, weak) id<MusicPlayerDelegate> delegate;
// timer handles timed tasks
@property NSTimer* timer;

// Function to start playing music
- (NSString*)startPlayingMusic;
// Function called upon Timer completion
- (void)onTick:(NSTimer *)timer;

@end


// Delegate
@protocol MusicPlayerDelegate <NSObject>

-(void)musicPlayerDidStartPlaying:(MusicPlayer*)musicPlayer;
-(void)musicPlayerDidEndPlaying:(MusicPlayer*)musicPlayer;

@end
//
//  House.h
//  CarCommunication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MusicPlayer.h"

@interface House : NSObject <MusicPlayerDelegate>

// Property of class MusicPlayer
@property MusicPlayer* musicPlayer;

// Function to play music
-(void)playSomeMusic;

@end

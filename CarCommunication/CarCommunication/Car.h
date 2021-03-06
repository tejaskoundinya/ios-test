//
//  Car.h
//  Car Communication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MessageBoard.h"
#import "MusicPlayer.h"


@interface Car : NSObject <MusicPlayerDelegate>

@property MusicPlayer* musicPlayer;
@property MessageBoard* messageBoard;

// Function to play music
-(void)playSomeMusic;

@end

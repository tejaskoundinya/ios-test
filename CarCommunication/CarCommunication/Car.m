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

@implementation Car {
    MusicPlayer* musicPlayer;
    MessageBoard* messageBoard;
}

- (id)init {
    musicPlayer = [[MusicPlayer alloc]init];
    musicPlayer.parentCar = self;
    messageBoard = [[MessageBoard alloc]init];
    return self;
}

-(void)showToBoard {
    NSLog(@"Playing Done");
}

- (void)playSomeMusic {
    NSLog(@"%@",[musicPlayer startPlayingMusic]);
}

@end

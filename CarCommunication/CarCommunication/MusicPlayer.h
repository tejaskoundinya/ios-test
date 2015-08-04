//
//  MusicPlayer.h
//  Car Communication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface MusicPlayer : NSObject

@property NSString* message;
@property Car *parentCar;
@property NSTimer* timer;

- (NSString*)startPlayingMusic;

- (void)onTick:(NSTimer *)timer;

@end

//
//  ViewController.h
//  CarCommunication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Car.h"
#import "House.h"

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet UIButton *homeMusicButton;
@property (nonatomic,weak) IBOutlet UIButton *carMusicButton;

@property (nonatomic,strong) House *house;
@property (nonatomic,strong) Car *car;

@end


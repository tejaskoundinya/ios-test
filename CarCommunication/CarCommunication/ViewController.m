//
//  ViewController.m
//  CarCommunication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapHomeMusicButton:(id)sender {
    // Creating an object of class House
    self.house = [[House alloc]init];
    // Invoking function playSomeMusic in object house
    [self.house playSomeMusic];
}

- (IBAction)didTapCarMusicButton:(id)sender {
    // Creating an object of class Car
    self.car = [[Car alloc]init];
    // Invoking function playSomeMusic in object car
    [self.car playSomeMusic];
}

@end

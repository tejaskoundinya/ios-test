//
//  ViewController.m
//  CarCommunication
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "House.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Creating an object of class Car
//    Car* car = [[Car alloc]init];
    // Invoking function playSomeMusic in object car
//    [car playSomeMusic];
    // Creating an object of class House
    House* house = [[House alloc]init];
    // Creating an object of class House
    [house playSomeMusic];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

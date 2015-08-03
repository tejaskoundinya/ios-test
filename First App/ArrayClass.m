//
//  ArrayClass.m
//  First App
//
//  Created by Tejas Koundinya on 8/3/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "ArrayClass.h"

@implementation ArrayClass

// Function to set value of property myArray to customArray
- (id)initWithArray:(NSArray*)customArray {
    self = [super init];
    if(self) {
        self.myArray = customArray;
    }
    return self;
}

// Function to print values of the array
- (void)printArray {
    // Loop prints values of the array _myArray
    for (NSInteger i = 0; i < 2; i++) {
        NSLog(@"%@", _myArray[i]);
    }
}

@end

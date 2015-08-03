//
//  ArrayClass.h
//  First App
//
//  Created by Tejas Koundinya on 8/3/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayClass : NSObject

// Property to refer to an array
@property (nonatomic,strong) NSArray* myArray;

// Function to set value of property myArray to customArray
- (id)initWithArray:(NSArray*)customArray;

// Function to print values of the array
- (void)printArray;

@end

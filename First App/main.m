//
//  main.m
//  First App
//
//  Created by Tejas Koundinya on 8/3/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Initialize new array with two numbers
        NSArray *array = @[@1, @2];
        // Creating object of class ArrayClass using newly created array
        ArrayClass *arrayClass = [[ArrayClass alloc]initWithArray:array];
        // Function call to print values of array
        [arrayClass printArray];
    }
    return 0;
}

//
//  ViewController.h
//  FunWithTables
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

// Array to store names of Bugs

//REVIEW: - tableData? Are these variable name descriptive enough?
@property (nonatomic, strong) NSArray* tableData;
// Array to store file names of Bug images
@property (nonatomic, strong) NSArray* tableThumbs;

@end


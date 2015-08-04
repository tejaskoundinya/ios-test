//
//  ViewController.h
//  FunWithTables
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Array to store names of Bugs

//REVIEW: - tableData? Are these variable name descriptive enough?
@property (nonatomic, strong) NSArray* bugs;
// Array to store file names of Bug images
@property (nonatomic, strong) NSArray* bugThumbs;

@property (nonatomic, weak) IBOutlet UITableView* tableView;

@end


@interface ViewController (TableViewCategory) <UITableViewDelegate, UITableViewDataSource>

@end
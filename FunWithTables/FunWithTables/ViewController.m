//
//  ViewController.m
//  FunWithTables
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

    // Array to store names of Bugs
    self.tableData = [NSArray arrayWithObjects:@"Lady Bug", @"Boxelder Bug", @"Rainbow Shield Bug", nil];
    // Array to store file names of Bug images
    self.tableThumbs = [NSArray arrayWithObjects:@"lady_bug.jpg", @"boxelder_bug.jpg", @"rainbow_shield_bug.jpg", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//It is always a good practice to implement delegates and data sources of a table view as a different category. Read about categories here: https://developer.apple.com/library/ios/documentation/General/Conceptual/DevPedia-CocoaCore/Category.html
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableData count];
}

//Why dequeReusableCellWithIdentifier?
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Identifier to identify the TableView
    static NSString* tableId = @"TableItem";
    // Referencing a cell
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:tableId];
    if(cell == nil) {
        // Allocating cell style
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableId];
    }
    // Setting the text of a cell
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    // Setting thumbnail image of a cell
    cell.imageView.image = [UIImage imageNamed:[self.tableThumbs objectAtIndex:indexPath.row]];
    return cell;
}


/*
It is always a good practice to customize a cell within a different method for purposes of modularity.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Identifier to identify the TableView
    static NSString* tableId = @"TableItem";
    // Referencing a cell
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:tableId];
    if(cell == nil) {
        // Allocating cell style
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableId];
    }
    [self configureCell:cell forIndexPath:indexPath];
    return cell;
}

-(void)configureCell:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {
    // Setting the text of a cell
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    // Setting thumbnail image of a cell
    cell.imageView.image = [UIImage imageNamed:[self.tableThumbs objectAtIndex:indexPath.row]];
}
*/
@end

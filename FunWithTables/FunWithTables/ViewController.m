//
//  ViewController.m
//  FunWithTables
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "ViewController.h"
#import "BugItemViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View controller overriden methods
- (void)viewDidLoad {
    [super viewDidLoad];

    // Array to store names of Bugs
    self.bugs = [NSArray arrayWithObjects:@"Lady Bug", @"Boxelder Bug", @"Rainbow Shield Bug", nil];
    // Array to store file names of Bug images
    self.bugThumbs = [NSArray arrayWithObjects:@"lady_bug.jpg", @"boxelder_bug.jpg", @"rainbow_shield_bug.jpg", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

@implementation ViewController (TableViewCategory)

//It is always a good practice to implement delegates and data sources of a table view as a different category. Read about categories here: https://developer.apple.com/library/ios/documentation/General/Conceptual/DevPedia-CocoaCore/Category.html

#pragma mark - Table view delegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.bugs count];
}

/*
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
    cell.textLabel.text = [self.bugs objectAtIndex:indexPath.row];
    // Setting thumbnail image of a cell
    cell.imageView.image = [UIImage imageNamed:[self.bugThumbs objectAtIndex:indexPath.row]];
    return cell;
}
*/

/*
It is always a good practice to customize a cell within a different method for purposes of modularity.
 */
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
    cell.textLabel.text = [self.bugs objectAtIndex:indexPath.row];
    // Setting thumbnail image of a cell
    cell.imageView.image = [UIImage imageNamed:[self.bugThumbs objectAtIndex:indexPath.row]];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"TableItemSegue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"TableItemSegue"]) {
        BugItemViewController* bugItemViewController = [segue destinationViewController];
        bugItemViewController.bugNameStr = [self.bugs objectAtIndex: [self.tableView indexPathForSelectedRow].row];
        bugItemViewController.bugImageName = [self.bugThumbs objectAtIndex: [self.tableView indexPathForSelectedRow].row];
    }
}

@end

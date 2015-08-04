//
//  BugItemViewController.m
//  FunWithTables
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "BugItemViewController.h"

@interface BugItemViewController ()

@end

@implementation BugItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.bugImage setImage:[UIImage imageNamed:self.bug.imageName]];
    [self.bugName setText:self.bug.bugName];
    [self.bugSpecies setText:self.bug.bugSpecies];
    [self.lifespan setText:self.bug.lifeSpan];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

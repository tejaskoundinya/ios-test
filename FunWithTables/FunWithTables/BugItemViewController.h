//
//  BugItemViewController.h
//  FunWithTables
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Bug.h"

@interface BugItemViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIImageView* bugImage;
@property (nonatomic, weak) IBOutlet UILabel* bugName;
@property (nonatomic, weak) IBOutlet UILabel* bugSpecies;
@property (nonatomic, weak) IBOutlet UILabel* lifespan;

@property (nonatomic, strong) Bug* bug;

@end

//
//  BugItemViewController.h
//  FunWithTables
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BugItemViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIImageView* bugImage;
@property (nonatomic, weak) IBOutlet UILabel* bugName;

@property (nonatomic, strong) NSString* bugNameStr;
@property (nonatomic, strong) NSString* bugImageName;

@end

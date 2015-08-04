//
//  Bug.m
//  FunWithTables
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import "Bug.h"

@implementation Bug

-(id)initWithBugName:(NSString *)bugName havingImage:(NSString *)imageName ofSpecies:(NSString *)bugSpecies havingLifeSpan:(NSString *)lifespan {
    self.bugName = bugName;
    self.imageName = imageName;
    self.bugSpecies = bugSpecies;
    self.lifeSpan = lifespan;
    return self;
}

@end

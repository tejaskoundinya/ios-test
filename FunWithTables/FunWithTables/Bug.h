//
//  Bug.h
//  FunWithTables
//
//  Created by Tejas Koundinya on 8/4/15.
//  Copyright (c) 2015 Tejas Koundinya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bug : NSObject

@property NSString* bugName;
@property NSString* imageName;
@property NSString* bugSpecies;
@property NSString* lifeSpan;

-(id)initWithBugName:(NSString *)bugName havingImage:(NSString *)imageName ofSpecies:(NSString *)bugSpecies havingLifeSpan:(NSString *)lifespan;

@end

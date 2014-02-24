//
//  Recipes.h
//  Whisk
//
//  Created by Ammon Gruwell on 2/24/14.
//  Copyright (c) 2014 Ammon Gruwell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Recipes : NSManagedObject

@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSNumber * difficulty;
@property (nonatomic, retain) NSString * ingredients;
@property (nonatomic, retain) NSString * instructions;
@property (nonatomic, retain) NSString * title;

@end

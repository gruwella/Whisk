//
//  AppDelegate.h
//  Whisk
//
//  Created by Ammon Gruwell on 1/29/14.
//  Copyright (c) 2014 Ammon Gruwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

-(NSArray*)getAllRecipes;

@end

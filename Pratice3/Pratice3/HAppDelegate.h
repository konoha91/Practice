//
//  HAppDelegate.h
//  Pratice3
//
//  Created by Hung on 3/31/14.
//  Copyright (c) 2014 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end

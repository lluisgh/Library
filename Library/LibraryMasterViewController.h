//
//  LibraryMasterViewController.h
//  Library
//
//  Created by Lluís Gómez Hernando on 22/02/13.
//  Copyright (c) 2013 Lafosca. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface LibraryMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSMutableArray *publications;
@end

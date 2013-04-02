//
//  LibraryMasterViewController.m
//  Library
//
//  Created by Lluís Gómez Hernando on 22/02/13.
//  Copyright (c) 2013 Lafosca. All rights reserved.
//

#import "LibraryMasterViewController.h"

#import "BookDetailViewController.h"
#import "NSDate+Extension.h"

#import "Book.h"
#import "Magazine.h"

@interface LibraryMasterViewController ()
- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;
@end

@implementation LibraryMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setPublications:[[NSMutableArray alloc] init]];
    [self insertDefaultBook];
    [self insertDefaultMagazine];
    
	// Do any additional setup after loading the view, typically from a nib.
//    self.navigationItem.leftBarButtonItem = self.editButtonItem;

//    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
//    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)insertDefaultBook
{
    Book *book = [[Book alloc] initWithEntity:[NSEntityDescription entityForName:@"Book" inManagedObjectContext:self.managedObjectContext]
               insertIntoManagedObjectContext:self.managedObjectContext];
    
    [book setTitle:@"The catcher in the rye"];
    [book setAuthor:@"J. D. Sallinger"];
    [book setPublisher:@"Little, Brown and Company"];
#warning check how date works, month begins at zero?
    [book setPublicationDate:[NSDate dateWithYear:1951 Month:7 Day:16]];
    [book setEditionsValue:20];
    [book setPagesValue:120];
    
    [[self publications] addObject:book];
}

- (void)insertDefaultMagazine
{
    Magazine *magazine = [[Magazine alloc] initWithEntity:[NSEntityDescription entityForName:@"Magazine"
                                                                      inManagedObjectContext:[self managedObjectContext]]
                           insertIntoManagedObjectContext:self.managedObjectContext];
    
    [magazine setTitle:@"v12 Game"];
    [magazine setName:@"The Next Web"];
    [magazine setPublisher:@"The Next Web"];
#warning check how date works, month begins at zero?
    [magazine setPublicationDate:[NSDate dateWithYear:2013 Month:3 Day:14]];
    [magazine setEditor:@"Ziad M. Kane"];
    [magazine setPagesValue:30];

    [[self publications] addObject:magazine];
}

- (void)insertNewObject:(id)sender
{
    
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self publications] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // The table view should not be re-orderable.
    return NO;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSManagedObject *detailItem = [[self publications] objectAtIndex:indexPath.row];
        [[segue destinationViewController] setDetailItem:detailItem];
    }
}


- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView beginUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
           atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type
{
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject
       atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath
{
    UITableView *tableView = self.tableView;
    
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeUpdate:
            [self configureCell:[tableView cellForRowAtIndexPath:indexPath] atIndexPath:indexPath];
            break;
            
        case NSFetchedResultsChangeMove:
            [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            [tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
    }
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView endUpdates];
}

/*
// Implementing the above methods to update the table view in response to individual changes may have performance implications if a large number of changes are made simultaneously. If this proves to be an issue, you can instead just implement controllerDidChangeContent: which notifies the delegate that all section and object changes have been processed. 
 
 - (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    // In the simplest, most efficient, case, reload the table view.
    [self.tableView reloadData];
}
 */

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    
    NSManagedObject *detailItem = [[self publications] objectAtIndex:indexPath.row];
    
    [[cell textLabel] setText:[detailItem valueForKey:@"title"]];

    if ([detailItem isKindOfClass:[Book class]]) {
        [cell.detailTextLabel setText:[detailItem valueForKey:@"author"]];
    } else {
        [cell.detailTextLabel setText:[detailItem valueForKey:@"name"]];
    }
}

@end

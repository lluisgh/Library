//
//  LibraryDetailViewController.m
//  Library
//
//  Created by Lluís Gómez Hernando on 22/02/13.
//  Copyright (c) 2013 Lafosca. All rights reserved.
//

#import "BookDetailViewController.h"

#import "Book.h"
#import "Magazine.h"

#import "NSDate+Extension.h"

@interface BookDetailViewController ()
- (void)configureView;
@end

@implementation BookDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if ([self detailItem]) {
        [[self titleLabel] setText:[[self detailItem] valueForKey:@"title"]];
        [[self publisherDetailLabel] setText:[[self detailItem] valueForKey:@"publisher"]];
                
        NSDate *publicationDate = [[self detailItem] valueForKey:@"publicationDate"];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"dd/MM/yyyy"];
        [[self publicationDateDetailLabel] setText:[dateFormatter stringFromDate:publicationDate]];
        
        NSNumber *numberOfPages = [[self detailItem] valueForKey:@"pages"];
        [[self pagesDetailLabel] setText:[numberOfPages stringValue]];
        
        [[self isbnDetailLabel] setText:[[self detailItem] valueForKey:@"isbn"]];
        
        if ([[self detailItem] isKindOfClass:[Book class]]) {
            Book *book = [self detailItem];
            [[self authorDetailLabel] setText:[book author]];
            [[self editionsDetailLabel] setText:[[book editions] stringValue]];
        } else {
            Magazine *magazine = [self detailItem];
            
            [[self authorTitleLabel] setText:@"Name"];
            [[self authorDetailLabel] setText:[magazine name]];
            
            [[self editionsTitleLabel] setText:@"Editor"];
            [[self editionsDetailLabel] setText:[magazine editor]];
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  LibraryDetailViewController.h
//  Library
//
//  Created by Lluís Gómez Hernando on 22/02/13.
//  Copyright (c) 2013 Lafosca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookDetailViewController : UITableViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *authorDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *publisherDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *publicationDateDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *editionsDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *pagesDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *isbnDetailLabel;

@property (weak, nonatomic) IBOutlet UILabel *authorTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *editionsTitleLabel;

@end

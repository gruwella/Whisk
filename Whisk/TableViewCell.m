//
//  TableViewCell.m
//  Whisk
//
//  Created by Ammon Gruwell on 2/24/14.
//  Copyright (c) 2014 Ammon Gruwell. All rights reserved.
//

#import "TableViewCell.h"
#import "AppDelegate.h"
#import "Recipes.h"

@property (nonatomic,strong)NSArray* fetchedRecipesArray;

@implementation TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    
    // Fetching Records and saving it in "fetchedRecordsArray" object
    self.fetchedRecordsArray = [appDelegate getAllPhoneBookRecords];
    [self.tableView reloadData];
}

@end

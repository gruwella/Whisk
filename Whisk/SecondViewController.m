//
//  SecondViewController.m
//  Whisk
//
//  Created by Ammon Gruwell on 1/29/14.
//  Copyright (c) 2014 Ammon Gruwell. All rights reserved.
//

#import "SecondViewController.h"
#import "Recipes.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //1
    AppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    //2
    self.managedObjectContext = appDelegate.managedObjectContext;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPhoneBookEntry:(id)sender
{
    // Add Entry to PhoneBook Data base and reset all fields
    
    //  1
    Recipes * newEntry = [NSEntityDescription insertNewObjectForEntityForName:@"Recipe"
                                                      inManagedObjectContext:self.managedObjectContext];
    //  2
    newEntry.category = self.categoryTextfield.text;
    newEntry.difficulty = self.difficultyTextfield.text;
    newEntry.ingredients = self.ingredientsTextfield.text;
    newEntry.instructions = self.instructionsTextfield.text;
    newEntry.title = self.titleTextfield.text;
    //  3
    NSError *error;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
    //  4
    self.categoryTextfield.text = @"";
    self.difficutlyTextfield.text = @"";
    self.ingredientsTextfield.text = @"";
    self.instructionsTextfield.text = @"";
    self.titleTextfield.text = @"";
    //  5
    [self.view endEditing:YES];
}

@end

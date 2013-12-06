//
//  FirstPopViewController.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 12/5/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "FirstPopViewController.h"
#import "SecondPopViewController.h"

@interface FirstPopViewController ()

@end

@implementation FirstPopViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.title = @"First Page"; //Title of the app
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [super viewWillAppear:animated];
}
-(IBAction)onClick:(id)sender //Button to pop you into the next page
{
    SecondPopViewController *secondView = [[SecondPopViewController alloc] initWithNibName:@"SecondPopView" bundle:nil];
    
    if(secondView !=nil)
    {
        [self.navigationController pushViewController:secondView animated:TRUE]; //Makes the move to the second view
    }
}

-(IBAction)backButton:(id)sender //Go back a page button
{
    [self.navigationController popViewControllerAnimated:TRUE];
}

@end

//
//  DetailViewController.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 12/5/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize name;
@synthesize linkName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.title = @"Detail View"; //Title of the app
    self.navigationController.navigationBar.tintColor = [UIColor blackColor]; //Not working not sure why
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateUILabel
{
    nameLabel.text = name;
    linkLabel.text = linkName;
}

-(IBAction)backButton:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end
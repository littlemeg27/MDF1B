//
//  MDF1FirstViewController.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 12/5/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1FirstViewController.h"
#import "FirstPopViewController.h"

@interface MDF1FirstViewController ()

@end

@implementation MDF1FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Home", @"Home");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.title = @"Home"; //Title of the app
    self.navigationController.navigationBar.tintColor = [UIColor blackColor]; //Color
    [super viewWillAppear:animated];
}

-(IBAction)onClick:(id)sender
{
    FirstPopViewController *firstView = [[FirstPopViewController alloc] initWithNibName:@"FirstPopView" bundle:nil];
    
    if(firstView !=nil)
    {
        [self.navigationController pushViewController:firstView animated:TRUE]; //Makes the move to the first view
    }
}

@end

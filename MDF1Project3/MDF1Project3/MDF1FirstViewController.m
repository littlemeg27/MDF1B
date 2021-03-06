//
//  MDF1FirstViewController.m
//  MDF1Project3
//
//  Created by Brenna Pavlinchak on 12/12/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1FirstViewController.h"
#import "ApplicationState.h"
#import "MDF1SecondViewController.h"
#import "CustomObject.h"
#import "MyMapAnnotation.h"

@interface MDF1FirstViewController ()

@end

@implementation MDF1FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    /*ApplicationState *theAppState = [ApplicationState sharedApplicationState];
     
     if(theAppState != nil)
     {     //Not sure how i need to use yet but wanted to have code.
     theAppState.something = 0;
     }*/
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath //We need this to do the editing of our tableView
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"I want to delete: %d", indexPath.row);
        
        //Replace with object
        //[stringArray1 removeObjectAtIndex:indexPath.row];
        //[stringArray2 removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:TRUE];
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section //Creates table view
{
    return [[ApplicationState sharedApplicationState].businessArray count];
    //Replace with object
}

-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath //Adds values to each row
{
    static NSString  *cellIdentity = @"Cell";
    
    UITableViewCell *cellRow  = [tableView dequeueReusableCellWithIdentifier: cellIdentity];
    
    
    if(cellRow == nil)
    {
        cellRow = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: cellIdentity];
    }
    ApplicationState *theAppState = [ApplicationState sharedApplicationState];
    
    CustomObject *mapObject = [theAppState.businessArray objectAtIndex:indexPath.row];
    cellRow.textLabel.text = [mapObject valueForKey:mapObject.nameOfBusiness];
    
    return cellRow;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    MDF1SecondViewController *mapView = [[MDF1SecondViewController alloc] initWithNibName:@"MDF1SecondViewController" bundle:nil]; //Pop to the map page
    
    if(mapView !=nil)
    {
        //Add things it does right here when going into the second tab
    }
}


-(IBAction)editButton:(id)sender
{
    if(editMode == FALSE) //Ask what type of editing mode
    {
        [tableView setEditing:TRUE];
        [editButton setTitle:@"Finish" forState: UIControlStateNormal];
        editMode = TRUE; //Reset to not be in editing mode
    }
    else
    {
        [tableView setEditing:FALSE];
        [editButton setTitle:@"Edit" forState:UIControlStateNormal];
        editMode = FALSE;
    }
    
}


@end

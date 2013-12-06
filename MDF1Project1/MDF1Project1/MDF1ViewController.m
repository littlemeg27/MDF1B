//
//  MDF1ViewController.m
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 12/2/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1ViewController.h"
#import "CustomTableCell.h"
#import "DetailViewController.h"

@interface MDF1ViewController ()

@end

@implementation MDF1ViewController

- (void)viewDidLoad
{
    array1 = [[NSMutableArray alloc] initWithObjects:@"Easter Eggers", @"Amber Star Hybrid", @"Pearl White Leghorn", @"White Plymouth Rock ", @"Jersey Giant", @"Rhode Island Red", @"Buff Orpington", @"Delaware", @"Dominique", @"California Grey", @"New Hampshire", @"Padovana", @"Ancona", @"Orloff", @"Dorking", @"Red Shaver", @"Buckeye", @"Holland", @"Scots Grey", nil]; //First array for tableView
    
    array2 = [[NSMutableArray alloc] initWithObjects:@"Tan, Brown, Black, White and Grey", @"White and Tan", @"White", @"White and Off White", @"Black and Grey", @"Brown, Red and Black", @"Grey, Blue, Tan", @"Silver, Black and White", @"Black and White", @"Black and White", @"Red", @"White and Tan", @"Black and White", @"Brown, Black and White", @"White and Black", @"Red and Brown", @"Red and Black", @"White", @"White and Gret", nil]; //Second array for tableView
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
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
        
        [array1 removeObjectAtIndex:indexPath.row]; //Removes the objects from the UITableViewCell
        [array2 removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:TRUE];
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section //Creates table view
{
    return [array1 count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath //Adds values to each row
{
    static NSString  *cellIdentity = @"Cell";
    
    CustomTableCell *cellRow  = [tableView dequeueReusableCellWithIdentifier: cellIdentity];
    
    
    if(cellRow == nil)
    {
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for(UIView *view in views)
        {
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cellRow = (CustomTableCell*)view;
                
                cellRow.nameLabel.text = [array1 objectAtIndex:indexPath.row];
                
                cellRow.colorLabel.text = [array2 objectAtIndex:indexPath.row];
            }
        }
    }
    
    return cellRow;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    DetailViewController *detailView = [[DetailViewController alloc] initWithNibName:@"DetailView" bundle:nil]; //Pop to the detail page
    
    if(detailView !=nil)
    {
        detailView.name = [array1 objectAtIndex:indexPath.row]; //Show the name on the detail page
        detailView.color = [array2 objectAtIndex:indexPath.row]; //Show the team on the detail page
        [self presentViewController:detailView animated:YES completion:nil];
        [detailView updateUILabel];
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

-(CGFloat)tableView:(UITableViewCell *)sender heightForRowAtIndexPath:(NSIndexPath *)indexPath; //Changes the height of the cells to the right size.
{
    return tableView.rowHeight * 2;
}

@end

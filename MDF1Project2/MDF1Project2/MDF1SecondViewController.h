//
//  MDF1SecondViewController.h
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 12/5/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDF1SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *tableView;
    
    NSMutableArray *array1;
    NSMutableArray *array2;
    UIAlertView *editAlert;
    BOOL editMode;
    
    IBOutlet UIButton *editButton;
}

@end

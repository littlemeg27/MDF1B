//
//  DetailViewController.h
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 12/5/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel* nameLabel;
    IBOutlet UILabel* linkLabel;
    IBOutlet UIButton* backButton;
}

@property(nonatomic, copy) NSString* name;
@property(nonatomic, copy) NSString* linkName;

-(void)updateUILabel;
-(IBAction)backButton:(id)sender;
@end

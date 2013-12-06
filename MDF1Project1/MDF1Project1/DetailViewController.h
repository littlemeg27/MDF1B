//
//  DetailViewController.h
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 12/2/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel* nameLabel;
    IBOutlet UILabel* colorLabel;
    IBOutlet UIButton* backButton;
}

@property(nonatomic, copy) NSString* name;
@property(nonatomic, copy) NSString* color;

-(void)updateUILabel;
-(IBAction)backButton:(id)sender;

@end

//
//  CustomTableCell.h
//  MDF1Project1
//
//  Created by Brenna Pavlinchak on 12/2/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
{
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *colorLabel;
}

@property (nonatomic, strong) UILabel* nameLabel;
@property (nonatomic, strong) UILabel* colorLabel;

@end


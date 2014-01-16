//
//  SubCustomTableCell.h
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/15/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubCustomTableCell : UITableViewCell
{
    UIImageView *_thumbnail;
    UILabel *_titleLabel;
}
@property (nonatomic, retain) UIImageView *thumbnail;
@property (nonatomic, retain) UILabel *titleLabel;

@end

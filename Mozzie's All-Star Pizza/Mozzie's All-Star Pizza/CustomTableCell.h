//
//  CustomTableCell.h
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/15/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell <UITableViewDelegate, UITableViewDataSource>
{
    UITableView *_horizontalTableView;
    NSArray *_articles;
    UIViewController *controller;
}

@property (nonatomic, retain) UITableView *horizontalTableView;
@property (nonatomic, retain) NSArray *articles;

-(void)ReturnControl:(UIViewController*)control;

@end

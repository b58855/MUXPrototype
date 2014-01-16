//
//  CustomTableCell.m
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/15/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import "CustomTableCell.h"
#import "SubCustomTableCell.h"
#import "ControlVariables.h"
#import "AddingPizzaToOrder.h"

@implementation CustomTableCell

@synthesize horizontalTableView = _horizontalTableView;
@synthesize articles = _articles;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.articles count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *now = [self.articles objectAtIndex:indexPath.row];
    if ([[now objectForKey:@"Name"] isEqualToString:@"Supreme"])
    {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        
        UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"Pizza"];
        //AddingPizzaToOrder *addingPizzaToOrder = [[AddingPizzaToOrder alloc] initWithNibName:@"AddingPizzaToOrder" bundle:nil];
        if (viewController != nil)
        {
            [controller presentViewController:viewController animated:true completion:nil];
        }

    }
    else if ([[now objectForKey:@"Name"] isEqualToString:@"Breadsticks"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Add to Order" message:@"Do you want to add an order of Breadsticks to your cart?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
        [alert show];
    }
    else if ([[now objectForKey:@"Name"] isEqualToString:@"Mt Dew"])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Add to Order" message:@"Do you want to add a 2-Liter of Mt Dew to your cart?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
        [alert show];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"SubCustomTableCell";
    
    __block SubCustomTableCell *cell = (SubCustomTableCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = [[SubCustomTableCell alloc] initWithFrame:CGRectMake(0, 0, kCellWidth, kCellHeight)];
    }
    
    __block NSDictionary *currentArticle = [self.articles objectAtIndex:indexPath.row];
    
    dispatch_queue_t concurrentQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(concurrentQueue, ^{
        UIImage *image = nil;
        image = [UIImage imageNamed:[currentArticle objectForKey:@"Image"]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [cell.thumbnail setImage:image];
        });
    });
    
    cell.titleLabel.text = [currentArticle objectForKey:@"Name"];
    
    return cell;
}

- (NSString *) reuseIdentifier
{
    return @"HorizontalCell";
}

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        self.horizontalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kCellHeight, kTableLength)];
        self.horizontalTableView.showsVerticalScrollIndicator = NO;
        self.horizontalTableView.showsHorizontalScrollIndicator = NO;
        self.horizontalTableView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
        [self.horizontalTableView setFrame:CGRectMake(kRowHorizontalPadding * 0.5, kRowVerticalPadding * 0.5, kTableLength - kRowHorizontalPadding, kCellHeight)];
        
        self.horizontalTableView.rowHeight = kCellWidth;
        self.horizontalTableView.backgroundColor = kHorizontalTableBackgroundColor;
        
        self.horizontalTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        self.horizontalTableView.separatorColor = [UIColor clearColor];
        
        self.horizontalTableView.dataSource = self;
        self.horizontalTableView.delegate = self;
        [self addSubview:self.horizontalTableView];
    }
    
    return self;
}

-(void)ReturnControl:(UIViewController*)control
{
    controller = control;
}

@end

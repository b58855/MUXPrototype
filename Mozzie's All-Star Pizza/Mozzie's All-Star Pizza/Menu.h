//
//  Menu.h
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/13/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Menu : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *tableView;
    NSDictionary *_articleDictionary;
    NSMutableArray *_reusableCells;
}
@property (nonatomic, retain) NSDictionary *articleDictionary;
@property (nonatomic, retain) NSMutableArray *reusableCells;

-(void)TransferInfo:(NSDictionary*)now;

@end

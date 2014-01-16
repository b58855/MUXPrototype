//
//  FindLocation.h
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/10/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindLocation : UIViewController
{
    UITextField    *textField;
}
@property (nonatomic, retain) IBOutlet UITextField *textField;
- (IBAction)textFieldReturn:(id)sender;
@end

//
//  Contact.m
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/14/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import "Contact.h"

@interface Contact ()

@end

@implementation Contact

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

@end

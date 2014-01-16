//
//  Address.m
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/10/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import "Address.h"

@interface Address ()

@end

@implementation Address

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

-(IBAction)SaveAddress:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save Address" message:@"Address has been saved." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}
-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

@end

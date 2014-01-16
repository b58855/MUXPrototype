//
//  Payment.m
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/10/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import "Payment.h"

@interface Payment ()

@end

@implementation Payment

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

-(IBAction)SaveCard:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save Card" message:@"Card has been saved." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}
-(IBAction)ConfirmPurchas:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Confirm Purchase" message:@"Order has been placed, you will receive an email soon at testing@gmail.com." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}
-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

@end

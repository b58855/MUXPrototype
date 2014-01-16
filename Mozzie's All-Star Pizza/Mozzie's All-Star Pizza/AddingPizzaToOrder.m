//
//  AddingPizzaToOrder.m
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/16/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import "AddingPizzaToOrder.h"

@interface AddingPizzaToOrder ()

@end

@implementation AddingPizzaToOrder

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

-(IBAction)ClickedAdd:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Add to Order" message:@"A Large Supreme Pizza with Traditional Crust was added to your cart." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    [self dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)ClickCancel:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}

@end

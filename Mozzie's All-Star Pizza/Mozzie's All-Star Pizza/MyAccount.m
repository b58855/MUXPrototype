//
//  MyAccount.m
//  Mozzie's All-Star Pizza
//
//  Created by Evan on 1/13/14.
//  Copyright (c) 2014 Evan Combs. All rights reserved.
//

#import "MyAccount.h"

@interface MyAccount ()

@end

@implementation MyAccount

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

-(IBAction)PressedBack:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}

@end

//
//  HelloViewController.m
//  HelloStoryboard
//
//  Created by Jeffrey Vest on 5/7/13.
//  Copyright (c) 2013 Jeffrey Vest. All rights reserved.
//

#import "HelloViewController.h"

@interface HelloViewController ()

@end

@implementation HelloViewController

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 10.0f;
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;
    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[LeftMenuViewController class]]) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"LeftMenu"];
    }
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
    [self.slidingViewController setAnchorRightRevealAmount:150.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backFromWazup:(UIStoryboardSegue *)seque {
    
}
- (IBAction)leftMenuReveal:(id)sender {
    [self.slidingViewController anchorTopViewTo:ECRight];
}
@end

//
//  ViewController.m
//  UINavigationBarTitle
//
//  Created by navzou on 10/5/13.
//  Copyright (c) 2013 navzou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initNavigationBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initNavigationBar
{
    //
    UINavigationItem *navigation = [[UINavigationItem alloc] init];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:17.0];
    label.shadowColor = [UIColor colorWithWhite:0.0
                                          alpha:0.5];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor redColor];
    label.text = @"Hello";
    
    //
    navigation.titleView = label;
    [self initDummyButton:navigation];
    [self.navigationController.navigationBar pushNavigationItem:navigation
                                                       animated:NO];
    [self.view insertSubview:self.navigationController.navigationBar
                     atIndex:[self.view.subviews count]];
}

- (void)initDummyButton:(UINavigationItem *)navigation
{
    UIView *dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    [dummyView setBackgroundColor:[UIColor orangeColor]];
    UIBarButtonItem *dummyButton = [[UIBarButtonItem alloc] initWithCustomView:dummyView];
    dummyButton.enabled = NO;
    navigation.leftBarButtonItem = dummyButton;
}

@end

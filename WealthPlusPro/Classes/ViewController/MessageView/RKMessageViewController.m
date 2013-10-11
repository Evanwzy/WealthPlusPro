//
//  RKMessageViewController.m
//  WealthPlusPro
//
//  Created by Evan on 13-10-11.
//  Copyright (c) 2013年 Evan. All rights reserved.
//

#import "RKMessageViewController.h"

@interface RKMessageViewController ()

@end

@implementation RKMessageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSString *)tabImageName
{
	return @"image-2";
}

- (NSString *)tabTitle
{
	return @"Message";
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

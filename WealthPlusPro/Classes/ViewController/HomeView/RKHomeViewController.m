//
//  RKHomeViewController.m
//  WealthPlusPro
//
//  Created by Evan on 13-10-10.
//  Copyright (c) 2013年 Evan. All rights reserved.
//

#import "RKHomeViewController.h"

@interface RKHomeViewController ()

@end

@implementation RKHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Profile";
    }
    return self;
}

- (NSString *)tabImageName
{
	return @"image-1";
}

- (NSString *)tabTitle
{
	return self.title;
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

//
//  SVModalWebViewController.m
//
//  Created by Oliver Letterer on 13.08.11.
//  Copyright 2011 Home. All rights reserved.
//
//  https://github.com/samvermette/SVWebViewController

#import "SVModalWebViewController.h"
#import "SVWebViewController.h"

@interface SVModalWebViewController ()

@property (nonatomic, strong) SVWebViewController *webViewController;

@end


@implementation SVModalWebViewController

@synthesize barsTintColor, availableActions, webViewController;

#pragma mark - Initialization


- (id)initWithAddress:(NSString*)urlString {
    return [self initWithURL:[NSURL URLWithString:urlString]];
}

- (id)initWithURL:(NSURL *)URL {
    self.webViewController = [[SVWebViewController alloc] initWithURL:URL];
    if (self = [super initWithRootViewController:self.webViewController]) {
        UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
        [button setFrame:CGRectMake(10.0f, 9.0f, 41.0f, 28.0f)];
        [button setImage:[UIImage imageNamed:@"doneBtn.png"] forState:UIControlStateNormal];
        [button addTarget:webViewController action:@selector(doneButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        self.webViewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
        [self.webViewController.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"list_topBg.png"] forBarMetrics:UIBarMetricsDefault];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:NO];
    
    self.navigationBar.tintColor = self.toolbar.tintColor = self.barsTintColor;
    self.navigationBar.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"list_topBg.png"]];
}

- (void)setAvailableActions:(SVWebViewControllerAvailableActions)newAvailableActions {
    self.webViewController.availableActions = newAvailableActions;
}

@end

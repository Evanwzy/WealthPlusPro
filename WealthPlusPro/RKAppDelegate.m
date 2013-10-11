//
//  RKAppDelegate.m
//  WealthPlusPro
//
//  Created by Evan on 13-10-9.
//  Copyright (c) 2013年 Evan. All rights reserved.
//

#import "RKAppDelegate.h"
#import "AKTabBarController.h"
#import "RKHomeViewController.h"
#import "RKMessageViewController.h"
#import "RKMyViewController.h"
#import "RKProductsViewController.h"

@implementation RKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    _tabBarController =[[AKTabBarController alloc]initWithTabBarHeight:44.0];
    
    // If needed, disable the resizing when switching display orientations.
    /*
     [_tabBarController setTabBarHasFixedHeight:YES];
    */
    
    RKHomeViewController *hvCtr =[[RKHomeViewController alloc]init];
    RKMessageViewController *msgvCtr =[[RKMessageViewController alloc]init];
    RKMyViewController *myvCtr =[[RKMyViewController alloc]init];
    RKProductsViewController *pvCtr =[[RKProductsViewController alloc]init];
    
    UINavigationController *hvNaviController = [[UINavigationController alloc] initWithRootViewController:hvCtr];
    UINavigationController *msgvNaviController = [[UINavigationController alloc] initWithRootViewController:msgvCtr];
    UINavigationController *myvNaviController = [[UINavigationController alloc] initWithRootViewController:myvCtr];
    UINavigationController *pvNaviController = [[UINavigationController alloc] initWithRootViewController:pvCtr];
    
    hvNaviController.navigationBar.tintColor = [UIColor darkGrayColor];
    msgvNaviController.navigationBar.tintColor = [UIColor darkGrayColor];
    myvNaviController.navigationBar.tintColor = [UIColor darkGrayColor];
    pvNaviController.navigationBar.tintColor = [UIColor darkGrayColor];
    
    [_tabBarController setViewControllers:[NSMutableArray arrayWithObjects:
                                           hvNaviController,
                                           msgvNaviController,
                                           myvNaviController,
                                           pvNaviController,nil]];
    
    // Below you will find an example of the possible customizations, just uncomment the lines below
    
    // Tab background Image
    [_tabBarController setBackgroundImageName:@"noise-dark-gray.png"];
    [_tabBarController setSelectedBackgroundImageName:@"noise-dark-blue.png"];
    
    
     // If needed, set cap insets for the background image
     [_tabBarController setBackgroundImageCapInsets:UIEdgeInsetsMake(4, 4, 4, 4)];
     
     // Tabs top embos Color
     [_tabBarController setTabEdgeColor:[UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:0.8]];

     // Tabs Colors settings
     [_tabBarController setTabColors:@[[UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0.0],
     [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0]]]; // MAX 2 Colors
     
     [_tabBarController setSelectedTabColors:@[[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1.0],
     [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0]]]; // MAX 2 Colors
    
     // Tab Stroke Color
     [_tabBarController setTabStrokeColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0]];
    
     // Icons Color settings
     [_tabBarController setIconColors:@[[UIColor colorWithRed:174.0/255.0 green:174.0/255.0 blue:174.0/255.0 alpha:1],
     [UIColor colorWithRed:228.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:1]]]; // MAX 2 Colors
    
     // Icon Shadow
     [_tabBarController setIconShadowColor:[UIColor blackColor]];
     [_tabBarController setIconShadowOffset:CGSizeMake(0, 1)];
     
//     [_tabBarController setSelectedIconColors:@[[UIColor colorWithRed:174.0/255.0 green:174.0/255.0 blue:174.0/255.0 alpha:1],
//     [UIColor colorWithRed:228.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:1]]]; // MAX 2 Colors
     
     [_tabBarController setSelectedIconOuterGlowColor:[UIColor darkGrayColor]];
    
     // Text Color
     [_tabBarController setTextColor:[UIColor colorWithRed:157.0/255.0 green:157.0/255.0 blue:157.0/255.0 alpha:1.0]];
     [_tabBarController setSelectedTextColor:[UIColor colorWithRed:228.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:1.0]];
     
     // Text font
//     [_tabBarController setTextFont:[UIFont fontWithName:@"Chalkduster" size:14]];
    
     // Hide / Show glossy on tab icons
     [_tabBarController setIconGlossyIsHidden:YES];
     
     // Enable / Disable pre-rendered image mode
     [_tabBarController setTabIconPreRendered:NO];
    
    
    // Uncomment the following lines to completely remove the border from all elements.
    /*
     [_tabBarController setTabEdgeColor:[UIColor clearColor]];
     [_tabBarController setTabInnerStrokeColor:[UIColor clearColor]];
     [_tabBarController setTabStrokeColor:[UIColor clearColor]];
     [_tabBarController setTopEdgeColor:[UIColor clearColor]];
     */
    
    // Uncomment the following to display centered image in the center of the tabbar, similar to Instagram.
    /*
     UIImage *img = [UIImage imageNamed:@"sample-center-image"];
     UIImageView *bottomCenterView = [[UIImageView alloc] initWithImage:img];
     CGRect rect = _tabBarController.view.frame;
     bottomCenterView.frame = CGRectMake(rect.size.width/2 - img.size.width/2, rect.size.height - img.size.height,
     img.size.width, img.size.height);
     [_tabBarController.view addSubview:bottomCenterView];
     */
    
    
    // Override point for customization after application launch.
    [self.window setRootViewController:_tabBarController];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  RKAppDelegate.h
//  WealthPlusPro
//
//  Created by Evan on 13-10-9.
//  Copyright (c) 2013年 Evan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKTabBarController;

@interface RKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) AKTabBarController *tabBarController;

@end

//
//  Common.h
//  WealthPlusPro
//
//  Created by Evan on 13-10-10.
//  Copyright (c) 2013年 Evan. All rights reserved.
//

#define IS_IPHONE_5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )
#define IS_IOS7     (fabs([[[UIDevice currentDevice] systemVersion]floatValue]) >=7.0)

#import <Foundation/Foundation.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTCarrier.h>
#import "ASIHTTPRequest.h"
#import "ASINetworkQueue.h"
#import "RKNetWorkingManager.h"

@interface Common : NSObject {
    
}
+ (NSString *)getKey;

+ (void)showNetWorokingAlertWithMessage :(NSString *)msg;
+ (void)showNetWorokingAlertWithMessageWithSucc :(NSString *)msg;

//new code 12.01 ???==>about cancel request
+ (void)cancelAllRequestWithQueue:(ASINetworkQueue *)queue;
+ (void)cancelAllRequestWithQueue:(ASINetworkQueue *)queue withOutRequestWithKeys:(NSArray *)keys
                    andWithValues:(NSArray *)values;
+ (void)cancelAllRequestWithQueue:(ASINetworkQueue *)queue withOutRequestWithDictionary:(NSDictionary *)dictionary;
+ (BOOL)requestExistsWithQueue:(ASINetworkQueue *)queue WithDictionary:(NSDictionary *)dictionary;
+ (void)cancelAllRequestOfAllQueue;

@end

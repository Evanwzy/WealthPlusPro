//
//  RKNetWorkingManager.h
//  Lohas
//
//  Created by Evan on 13-8-15.
//  Copyright (c) 2013年 Evan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASINetworkQueue.h"
#import "ASIFormDataRequest.h"
#import "Constents.h"


@interface RKNetWorkingManager : NSObject {
    ASINetworkQueue *queue;
    ASINetworkQueue *singleQueue;
    ASINetworkQueue *remoteNotificationQueue;
    //NSOperationQueue *queue;
    
    //NetWorkingRequestDelegate
    
}

@property (nonatomic, retain) ASINetworkQueue *queue;
@property (nonatomic, retain) ASINetworkQueue *singleQueue;
@property (nonatomic, retain) ASINetworkQueue *remoteNotificationQueue;

+ (RKNetWorkingManager *)sharedManager;

//data Request

@end

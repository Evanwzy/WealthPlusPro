//
//  Constents.h
//  Lohas
//
//  Created by Evan on 13-8-15.
//  Copyright (c) 2013年 Evan. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//Server Address
#define SERVER_URL @"http://lehuo.d23684.51kweb.com/xingtuo/index.php?s="


//Url Address
#define homeUrl [NSString stringWithFormat:@"%@/ApiIndex/index", SERVER_URL]
#define loginUrl [NSString stringWithFormat:@"%@/ApiLogin/login", SERVER_URL]
#define verifyUrl [NSString stringWithFormat:@"%@/ApiSend/register_send", SERVER_URL]
#define registerUrl [NSString stringWithFormat:@"%@/ApiLogin/register", SERVER_URL]
#define faqUrl [NSString stringWithFormat:@"%@/ApiQuestion/add_question", SERVER_URL]
#define msgUrl [NSString stringWithFormat:@"%@/ApiMessage/message_list", SERVER_URL]

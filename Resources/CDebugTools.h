//
//  CDebugTools.h
//
//  Created by Lee on 2017/12/13.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "CExceptionInfo.h"
//#import "XBApiDebugInfo.h"

typedef NS_ENUM(NSInteger,CDebugType) {
    CDebugTypeCrashInfo,
    CDebugTypeApiInfo
};

@interface CDebugTools : NSObject

+ (instancetype)sharedInstance;



/**
 展示调试结果
 */
- (void)showExceptionTools;


/**
 添加api相关信息

 @param domain 域名
 @param url 无域名则完整url，有域名则去掉域名后的url
 @param params 参数
 @param response 接收的数据
 @param succeed 是否成功
 */
- (void)addApiDebugInfoWithDomain:(NSString *)domain
                             url:(NSString *)url
                       params:(NSDictionary *)params
                     response:(NSDictionary *)response
                      succeed:(BOOL)succeed;

/**
 获取奔溃日志列表

 @return 奔溃日志列表
 */
- (NSArray *)crashInfoList;

/**
 获取api日志列表

 @return api日志列表
 */
- (NSArray *)apiDebugInfoList;

@end

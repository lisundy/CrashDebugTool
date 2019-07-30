//
//  CDebugInfoListViewController.h
//
//  Created by Lee on 2017/12/18.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDebugTools.h"

@interface CDebugInfoListViewController : UIViewController

@property (nonatomic, assign) CDebugType debugType;

+ (void)presentWithType:(CDebugType)debugType;

@end

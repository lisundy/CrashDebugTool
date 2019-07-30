//
//  CDebugDetailsViewController.m
//
//  Created by Lee on 2017/12/18.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import "CDebugDetailsViewController.h"
#import "CExceptionInfo.h"
//#import "XBApiDebugInfo.h"

@interface CDebugDetailsViewController ()

@property (nonatomic, strong) NSString *objDes;

@end

@implementation CDebugDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(share)];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64)];
    [self.view addSubview:textView];
    textView.editable = NO;
    
    if ([_data isKindOfClass:CExceptionInfo.class]) {
        self.title = @"Crash 详情";
        CExceptionInfo *info = _data;
        textView.text = info.description;
        _objDes = info.description;
    }
    
}

- (void)share{
    [[UIPasteboard generalPasteboard] setString:_objDes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end

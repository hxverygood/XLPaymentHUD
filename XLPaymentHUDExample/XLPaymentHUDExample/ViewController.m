//
//  ViewController.m
//  XLPaymentHUDExample
//
//  Created by MengXianLiang on 2017/4/5.
//  Copyright © 2017年 MengXianLiang. All rights reserved.
//

#import "ViewController.h"
#import "XLPaymentSuccessHUD.h"
#import "XLPaymentLoadingHUD.h"
#import "XLPaymentFailureHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"开始支付" style:UIBarButtonItemStylePlain target:self action:@selector(showLoadingAnimation)];
    
    UIBarButtonItem *finishItem = [[UIBarButtonItem alloc] initWithTitle:@"支付完成" style:UIBarButtonItemStylePlain target:self action:@selector(showSuccessAnimation)];
    UIBarButtonItem *failItem = [[UIBarButtonItem alloc] initWithTitle:@"失败" style:UIBarButtonItemStylePlain target:self action:@selector(showFailureAnimation)];
    self.navigationItem.rightBarButtonItems = @[failItem, finishItem];
}

-(void)showLoadingAnimation{
    
    self.title = @"正在付款...";
    
    // 隐藏之前的动画
    [XLPaymentSuccessHUD hideIn:self.view];
    [XLPaymentFailureHUD hideIn:self.view];
    //显示支付中动画
    [XLPaymentLoadingHUD showIn:self.view];
}

-(void)showSuccessAnimation{
    
    self.title = @"付款完成";
    
    // 隐藏之前的动画
    [XLPaymentLoadingHUD hideIn:self.view];
    [XLPaymentFailureHUD hideIn:self.view];
    //显示支付完成动画
    [XLPaymentSuccessHUD showIn:self.view];
}

-(void)showFailureAnimation{
    
    self.title = @"付款失败";
    
    // 隐藏之前的动画
    [XLPaymentLoadingHUD hideIn:self.view];
    [XLPaymentSuccessHUD hideIn:self.view];
    //显示支付完成动画
    [XLPaymentFailureHUD showIn:self.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

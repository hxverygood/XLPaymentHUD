//
//  XLPaymentFailureHUD.h
//  XLPaymentHUDExample
//
//  Created by hoomsun on 2017/8/26.
//  Copyright © 2017年 MengXianLiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XLPaymentFailureHUD : UIView<CAAnimationDelegate>

-(void)start;

-(void)hide;

+(XLPaymentFailureHUD *)showIn:(UIView*)view;

+(XLPaymentFailureHUD *)hideIn:(UIView*)view;

@end

//
//  LJSCustomButton.h
//  LJSMeasureNearsight
//
//  Created by candy on 16/7/13.
//  Copyright © 2016年 candy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJSCustomButton : UIButton





-(instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)title andColor:(UIColor*)color andstate:(UIControlState)buttonStae;


+(instancetype)buttonWithFrame:(CGRect)frame andTitle:(NSString *)title andColor:(UIColor*)color andstate:(UIControlState)buttonStae;

@end

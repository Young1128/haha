//
//  LJSTextLabel.m
//  LJSMeasureNearsight
//
//  Created by candy on 16/7/13.
//  Copyright © 2016年 candy. All rights reserved.
//

#import "LJSTextLabel.h"

@implementation LJSTextLabel


-(instancetype)initWithFont:(UIFont *)font{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 300);
        self.text = @"E";
        self.font = font;
        self.textAlignment = NSTextAlignmentCenter;
    }
    
    return self;
    
}

+(instancetype)LabelWithFont:(UIFont *)font{
    
    return [[self alloc]initWithFont:font];
    
}

@end

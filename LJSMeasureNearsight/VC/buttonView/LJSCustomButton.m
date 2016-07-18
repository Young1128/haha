//
//  LJSCustomButton.m
//  LJSMeasureNearsight
//
//  Created by candy on 16/7/13.
//  Copyright © 2016年 candy. All rights reserved.
//

#import "LJSCustomButton.h"

@implementation LJSCustomButton

-(instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)title andColor:(UIColor*)color andstate:(UIControlState)buttonStae{
    self = [super init];
    if (self) {
        self.frame = frame;
        [self setTitle:title forState:buttonStae];
        self.backgroundColor = color;
        
    }
    
    return self;
}

+(instancetype)buttonWithFrame:(CGRect)frame andTitle:(NSString *)title andColor:(UIColor*)color andstate:(UIControlState)buttonStae{
    
    
    return [[self alloc]initWithFrame:frame andTitle:title andColor:color andstate:buttonStae];
    
}



@end

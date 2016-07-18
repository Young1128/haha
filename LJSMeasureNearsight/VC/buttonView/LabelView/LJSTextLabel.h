//
//  LJSTextLabel.h
//  LJSMeasureNearsight
//
//  Created by candy on 16/7/13.
//  Copyright © 2016年 candy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJSTextLabel : UILabel

@property (nonatomic ,assign)UIFont* labelfont;

-(instancetype)initWithFont:(UIFont *)font;

+(instancetype)LabelWithFont:(UIFont *)font;
@end

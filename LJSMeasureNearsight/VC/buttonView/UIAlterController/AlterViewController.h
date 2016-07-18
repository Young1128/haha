//
//  AlterViewController.h
//  LJSMeasureNearsight
//
//  Created by candy on 16/7/13.
//  Copyright © 2016年 candy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol poptofirstDelegate <NSObject>

-(void)poptofirstViewController;


@end
@interface AlterViewController : UIAlertController

@property(nonatomic ,weak)id <poptofirstDelegate> delegate;

-(instancetype)initWithTitle:(NSString *)title andMessage:(NSString *)message andcanceltitle:(NSString *)cancetitle andOthertitle:(NSString *)othertitle handler:(void (^)(UIAlertAction *action))handler;

@end

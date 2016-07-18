//
//  AlterViewController.m
//  LJSMeasureNearsight
//
//  Created by candy on 16/7/13.
//  Copyright © 2016年 candy. All rights reserved.
//

#import "AlterViewController.h"

@interface AlterViewController ()

@end

@implementation AlterViewController

-(instancetype)initWithTitle:(NSString *)title andMessage:(NSString *)message andcanceltitle:(NSString *)cancetitle andOthertitle:(NSString *)othertitle handler:(void (^)(UIAlertAction *action))handler {
    self = [super init];
    if (self) {
        
        self.title = title;
        
        self.message = message;
        
        [self setValue:@(UIAlertControllerStyleAlert) forKeyPath:@"preferredStyle"];
        
             
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancetitle style:UIAlertActionStyleCancel handler:handler];
        
        
        
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:othertitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            
        }];
        
        [self addAction:cancelAction];
        [self addAction:otherAction];
        
    }
    
    return self;
    
}

-(void)detailsSetup{
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

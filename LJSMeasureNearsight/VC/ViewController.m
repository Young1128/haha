
//
//  ViewController.m
//  LJSMeasureNearsight
//
//  Created by candy on 16/7/13.
//  Copyright © 2016年 candy. All rights reserved.
//

#import "ViewController.h"
#import "AlterViewController.h"
#import "LJSCustomButton.h"
#import "LJSTextLabel.h"

static int font = 60;

@interface ViewController ()<poptofirstDelegate>

@end

@implementation ViewController

//-(void)setTextfont:(int)textfont{
//
//    _textfont = textfont;
//
//}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self commitsubView];
    
    
}

-(void)commitsubView{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    LJSTextLabel *Textlabel = [[LJSTextLabel alloc]initWithFont:[UIFont systemFontOfSize:font]];
    font-=5;
    
    [self.view addSubview:Textlabel];
    
    LJSCustomButton *button1 = [LJSCustomButton buttonWithFrame:CGRectMake(100, 300, 100, 50) andTitle:@"看得见" andColor:[UIColor redColor] andstate:UIControlStateNormal];
    
    LJSCustomButton *button2 = [LJSCustomButton buttonWithFrame:CGRectMake(200, 300, 100, 50) andTitle:@"看不见" andColor:[UIColor blueColor] andstate:UIControlStateNormal];
    
    [button1 addTarget:self action:@selector(doClick1) forControlEvents:UIControlEventTouchUpInside];
    
    [button2 addTarget:self action:@selector(doClick2) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];
    
    [self.view addSubview:button2];
    
    if (font==0) {
        button1.userInteractionEnabled = NO;
        button2.userInteractionEnabled = YES;
    }
    
}
-(void)doClick1{
    
    
    ViewController *secondVC = [[ViewController alloc]init];
    
    
    [self.navigationController pushViewController:secondVC animated:YES];
    
}

-(void)doClick2{
    AlterViewController *alterVC = [[AlterViewController alloc]initWithTitle:@"视力测试" andMessage:@"确认要看不见了吗？" andcanceltitle:@"再看看" andOthertitle:@"确认返回"  handler:^(UIAlertAction *action) {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }];
    
    alterVC.delegate = self;
    
    [self presentViewController:alterVC animated:YES completion:nil];
}

-(void)poptofirstViewController{
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

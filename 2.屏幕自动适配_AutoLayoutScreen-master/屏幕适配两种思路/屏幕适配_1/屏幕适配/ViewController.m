//
//  ViewController.m
//  屏幕适配
//
//  Created by 刘渊 on 2017/8/21.
//  Copyright © 2017年 刘渊. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(LineX(20), LineY(20), LineX(100), LineY(30))];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(LineX(20), LineY(20), LineX(LYWidth - 2*20), LineY(20))];
    [self.view addSubview:btn];
    
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"点我" forState: UIControlStateNormal];
    btn.titleLabel.font = Font(14);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

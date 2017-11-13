//
//  ViewController.m
//  屏幕适配_2
//
//  Created by 刘渊 on 2017/8/21.
//  Copyright © 2017年 刘渊. All rights reserved.
//

#import "ViewController.h"
#import "AutoFillScreenUtils.h"
#import "DemoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self setupViews];
    
    //不同屏幕适配关键代码
    [AutoFillScreenUtils autoLayoutFillScreen:self.view];
    
}

- (void)setupViews{
    
    UIButton *loginBtn = [[UIButton alloc]initWithFrame:CGRectMake(10, 20, 320-10*2, 44)];
    [loginBtn setTitle:@"login" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [loginBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [loginBtn setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:loginBtn];
    
    UIButton *registerBtn = [[UIButton alloc]initWithFrame:CGRectMake(10, 84, 320-10*2, 44)];
    [registerBtn setTitle:@"register" forState:UIControlStateNormal];
    [registerBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [registerBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [registerBtn setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:registerBtn];
    
    UIButton *pushBtn = [[UIButton alloc]initWithFrame:CGRectMake(276, 536, 44, 44)];
    pushBtn.backgroundColor = [UIColor cyanColor];
    [pushBtn setTitle:@"Push" forState:UIControlStateNormal];
    [pushBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [pushBtn addTarget:self action:@selector(pushDemoVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
    
}

- (void)pushDemoVC{
    DemoViewController *demoVc = [[DemoViewController alloc]init];
    [self presentViewController:demoVc animated:true completion:nil];
}


@end

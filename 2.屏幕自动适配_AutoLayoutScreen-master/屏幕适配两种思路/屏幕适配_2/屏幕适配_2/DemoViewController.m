//
//  DemoViewController.m
//  屏幕适配_2
//
//  Created by 刘渊 on 2017/8/21.
//  Copyright © 2017年 刘渊. All rights reserved.
//

#import "DemoViewController.h"
#import "AutoFillScreenUtils.h"
@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    [self setupViews];
    
    [AutoFillScreenUtils autoLayoutFillScreen:self.view];
}

- (void)setupViews{
    
    float Spacing = 28.8;
    
    for (NSInteger i = 0; i < 4; i++) {
        
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(Spacing+i*(44)+(Spacing *i), 0, 44, 44)];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [btn setTitle:[NSString stringWithFormat:@"Btn-%ld",(long)i] forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor redColor];
        [self.view addSubview:btn];
        NSLog(@"x:%f,y:%f,width:%f,height:%f",btn.frame.origin.x,btn.frame.origin.y,btn.frame.size.width,btn.frame.size.height);
    }
    
    
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

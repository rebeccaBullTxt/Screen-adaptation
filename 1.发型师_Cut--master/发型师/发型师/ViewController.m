//
//  ViewController.m
//  发型师
//
//  Created by 刘渊 on 2017/10/16.
//  Copyright © 2017年 刘渊. All rights reserved.
//

#import "ViewController.h"
#import "LY_Barber.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI{
    
}

- (IBAction)round:(id)sender {
    [LY_Barber.Tony cut:LY_HairTypeRoundFace];
}

- (IBAction)flatTop:(id)sender {
    [LY_Barber.Tony cut:LY_HairTypeFlatTop];
}


- (IBAction)reset:(id)sender {
    [LY_Barber.Tony cut:LY_HairTypeDefault];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

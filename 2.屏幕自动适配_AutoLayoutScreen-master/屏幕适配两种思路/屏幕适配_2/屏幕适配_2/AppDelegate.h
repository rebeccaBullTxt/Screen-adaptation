//
//  AppDelegate.h
//  屏幕适配_2
//
//  Created by 刘渊 on 2017/8/21.
//  Copyright © 2017年 刘渊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//定义宽高比例系数属性
@property (nonatomic,assign) float autoSizeScaleX;
@property (nonatomic,assign) float autoSizeScaleY;

@end


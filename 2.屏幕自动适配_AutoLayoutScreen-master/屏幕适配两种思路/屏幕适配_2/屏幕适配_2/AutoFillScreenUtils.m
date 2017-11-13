//
//  AutoFillScreenUtils.m
//  屏幕适配_2
//
//  Created by 刘渊 on 2017/8/21.
//  Copyright © 2017年 刘渊. All rights reserved.
//

#import "AutoFillScreenUtils.h"
#import "AppDelegate.h"
@implementation AutoFillScreenUtils

//将需要适配的view作为参数传递
+ (void)autoLayoutFillScreen:(UIView *)view{
    
    for (UIView *firstLevelView in view.subviews) {
        firstLevelView.frame = [AutoFillScreenUtils upDateViewsFrame:firstLevelView.frame.origin.x withY:firstLevelView.frame.origin.y andWidth:firstLevelView.frame.size.width andHeight:firstLevelView.frame.size.height];
        for (UIView *secondLevelView in firstLevelView.subviews) {
            secondLevelView.frame = [AutoFillScreenUtils upDateViewsFrame:secondLevelView.frame.origin.x withY:secondLevelView.frame.origin.y andWidth:secondLevelView.frame.size.width andHeight:secondLevelView.frame.size.height];
            
        }
    }
}

//按比例系数更新frame
+ (CGRect)upDateViewsFrame:(CGFloat)x withY:(CGFloat)y andWidth:(CGFloat)width andHeight:(CGFloat)height{
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    CGRect rect;
    
    rect.origin.x = x * appDelegate.autoSizeScaleX;
    rect.origin.y = y * appDelegate.autoSizeScaleY;
    rect.size.width = width * appDelegate.autoSizeScaleX;
    rect.size.height = height * appDelegate.autoSizeScaleY;
    return rect;
}

@end

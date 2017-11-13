//
//  Barber.h
//  Barber
//
//  Created by laizw on 2017/9/22.
//  Copyright © 2017年 刘渊. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, LY_HairType) {
    LY_HairTypeDefault,    // 默认
    LY_HairTypeFlatTop,    // 平头
    LY_HairTypeRoundFace,  // 圆脸
};

@interface LY_Barber : NSObject

+ (instancetype)Tony;

- (void)cut:(LY_HairType)hairType;

@end

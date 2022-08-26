//
//  UIColor+LXMColor.m
//  LXMKit
//
//  Created by lu xiaoming on 2022/8/26.
//

#import "UIColor+LXMColor.h"

@implementation UIColor (LXMColor)

+ (UIColor *)lxm_colorWithHex:(long)hexValue {
    return [self lxm_colorWithHex:hexValue alpha:1];
}

+ (UIColor *)lxm_colorWithHex:(long)hexValue alpha:(CGFloat)alpha {
    float red = ((hexValue & 0xFF0000) >> 16) / 255.0;
    float green = ((hexValue & 0xFF00) >> 8) / 255.0;
    float blue = (hexValue & 0xFF) / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end

//
//  UIColor+LXMColor.h
//  LXMKit
//
//  Created by lu xiaoming on 2022/8/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (LXMColor)

+ (UIColor *)lxm_colorWithHex:(long)hexValue;

+ (UIColor *)lxm_colorWithHex:(long)hexValue alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END

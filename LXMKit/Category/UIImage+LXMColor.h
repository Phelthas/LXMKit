//
//  UIImage+LXMColor.h
//  LXMKit
//
//  Created by billthaslu on 2022/4/1.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LXMColor)

+ (nullable UIImage *)lxm_imageWithColor:(UIColor *)color;


+ (nullable UIImage *)lxm_imageWithColor:(UIColor *)color size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END

//
//  UIImage+LXMColor.m
//  LXMKit
//
//  Created by billthaslu on 2022/4/1.
//

#import "UIImage+LXMColor.h"

@implementation UIImage (LXMColor)

+ (nullable UIImage *)lxm_imageWithColor:(UIColor *)color {
    return [UIImage lxm_imageWithColor:color size:CGSizeMake(1, 1)];
}


+ (nullable UIImage *)lxm_imageWithColor:(UIColor *)color size:(CGSize)size {
    if (!color || size.width <= 0 || size.height <= 0) {
        return nil;
    }
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end

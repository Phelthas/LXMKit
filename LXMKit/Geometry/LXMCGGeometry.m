//
//  LXMCGGeometry.m
//  LXMKit
//
//  Created by billthaslu on 2021/12/31.
//

#import "LXMCGGeometry.h"

CGPoint CGRectGetTopLeftPoint(CGRect rect) {
    return CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect));
}

CGPoint CGRectGetTopRightPoint(CGRect rect) {
    return CGPointMake(CGRectGetMaxX(rect), CGRectGetMinY(rect));
}

CGPoint CGRectGetBottomLeftPoint(CGRect rect) {
    return CGPointMake(CGRectGetMinX(rect), CGRectGetMaxY(rect));
}

CGPoint CGRectGetBottomRightPoint(CGRect rect) {
    return CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect));
}

@implementation LXMCGGeometry

@end

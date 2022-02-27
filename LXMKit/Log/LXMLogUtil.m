//
//  LXMLogUtil.m
//  LXMKit
//
//  Created by billthaslu on 2022/2/19.
//

#import "LXMLogUtil.h"

void logTransform3D(CATransform3D transform) {
    NSLog(@"\n%0.1f, %0.1f, %0.1f, %0.1f,\n%0.1f, %0.1f, %0.1f, %0.1f,\n%0.1f, %0.1f, %0.1f, %0.1f,\n%0.1f, %0.1f, %0.1f, %0.1f,", transform.m11, transform.m12, transform.m13, transform.m14, transform.m21, transform.m22, transform.m23, transform.m24, transform.m31, transform.m32, transform.m33, transform.m34, transform.m41, transform.m42, transform.m43, transform.m44);
}

@implementation LXMLogUtil

@end

//
//  LXMCameraGeometry.m
//  LXMKit
//
//  Created by billthaslu on 2022/2/18.
//

#import "LXMCameraGeometry.h"

@implementation LXMCameraGeometry

/**
 顺时针或逆时针旋转180度等于先作一个水平镜像,再作一个垂直镜像；
 */

/**
 对于前置摄像头来说，videoOrientation 默认 AVCaptureVideoOrientationLandscapeLeft，
 此时将手机放到UIInterfaceOrientationLandscapeLeft时，采集的画面是正向的。
 设置videoOrientation = AVCaptureVideoOrientationLandscapeLeft，输出的image会逆时针旋转90度，看起来图片就是往左倒了；
 设置videoOrientation = AVCaptureVideoOrientationLandscapeRight，输出的image会顺时针旋转90度，看起来图片就是往右倒了；
 */
+ (CGFloat)degreeToRoateForFrontCameraWithInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation videoOrientation:(AVCaptureVideoOrientation)videoOrientation {
    CGFloat degree = 0;
    /*
    if (videoOrientation == AVCaptureVideoOrientationPortrait) {
        //videoOrientation = 1
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            //interfaceOrientation = 1
            degree = 0;
        } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
            //interfaceOrientation = 2
            degree = 180;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
            //interfaceOrientation = 3
            degree = 90;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
            //interfaceOrientation = 4
            degree = 270;
        }
    }
    else if (videoOrientation == AVCaptureVideoOrientationPortraitUpsideDown) {
        //videoOrientation = 2
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            //interfaceOrientation = 1
            degree = 180;
        } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
            //interfaceOrientation = 2
            degree = 0;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
            //interfaceOrientation = 3
            degree = 270;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
            //interfaceOrientation = 4
            degree = 90;
        }
        //可以看出，是在AVCaptureVideoOrientationPortrait结果的基础上，加了180
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeRight) {
        //videoOrientation = 3
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            //interfaceOrientation = 1
            degree = 270;
        } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
            //interfaceOrientation = 2
            degree = 90;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
            //interfaceOrientation = 3
            degree = 0;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
            //interfaceOrientation = 4
            degree = 180;
        }
        //可以看出，是在AVCaptureVideoOrientationPortrait结果的基础上，加了270
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeLeft) {
        //videoOrientation = 4
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            //interfaceOrientation = 1
            degree = 90;
        } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
            //interfaceOrientation = 2
            degree = 270;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
            //interfaceOrientation = 3
            degree = 180;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
            //interfaceOrientation = 4
            degree = 0;
        }
        //可以看出，是在AVCaptureVideoOrientationPortrait结果的基础上，加了90
    }
    */
     
    if (interfaceOrientation == UIInterfaceOrientationPortrait) {
        //interfaceOrientation = 1
        degree = 0;
    } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
        //interfaceOrientation = 2
        degree = 180;
    } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
        //interfaceOrientation = 3
        degree = 90;
    } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
        //interfaceOrientation = 4
        degree = -90;
    }
    
    if (videoOrientation == AVCaptureVideoOrientationPortrait) {
        //videoOrientation = 1
    }
    else if (videoOrientation == AVCaptureVideoOrientationPortraitUpsideDown) {
        //videoOrientation = 2
        degree += 180;
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeRight) {
        //videoOrientation = 3
        degree += -90;
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeLeft) {
        //videoOrientation = 4
        degree += 90;
    }
    
    return degree;
}

/**
 对于后置摄像头来说，videoOrientation 默认 AVCaptureVideoOrientationLandscapeRight，
 此时将手机放到UIInterfaceOrientationLandscapeRight时，采集的画面是正向的。
 设置videoOrientation = AVCaptureVideoOrientationLandscapeLeft，输出的image会顺时针旋转90度，看起来图片就是往右倒了；
 设置videoOrientation = AVCaptureVideoOrientationLandscapeRight，输出的image会逆时针旋转90度，看起来图片就是往左倒了；
 */
+ (CGFloat)degreeToRoateForBackCameraWithInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation videoOrientation:(AVCaptureVideoOrientation)videoOrientation {
    //后置摄像头情况下
    CGFloat degree = 0;
    /*
     设置videoOrientation为什么，那么当interfaceOrientation也转到相同的方向时，画面就是正的；
     当interfaceOrientation为其他方向时，只需要相应的旋转摄像机的方向即可
    if (videoOrientation == AVCaptureVideoOrientationPortrait) {
        //videoOrientation = 1
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            //interfaceOrientation = 1
            degree = 0;
        } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
            //interfaceOrientation = 2
            degree = 180;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
            //interfaceOrientation = 3
            degree = 270;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
            //interfaceOrientation = 4
            degree = 90;
        }
    }
    else if (videoOrientation == AVCaptureVideoOrientationPortraitUpsideDown) {
        //videoOrientation = 2
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            //interfaceOrientation = 1
            degree = 180;
        } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
            //interfaceOrientation = 2
            degree = 0;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
            //interfaceOrientation = 3
            degree = 90;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
            //interfaceOrientation = 4
            degree = 270;
        }
        //可以看出，是在AVCaptureVideoOrientationPortrait结果的基础上，加了180
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeRight) {
        //videoOrientation = 3
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            //interfaceOrientation = 1
            degree = 90;
        } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
            //interfaceOrientation = 2
            degree = 270;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
            //interfaceOrientation = 3
            degree = 0;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
            //interfaceOrientation = 4
            degree = 180;
        }
        //可以看出，是在AVCaptureVideoOrientationPortrait结果的基础上，加了90
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeLeft) {
        //videoOrientation = 4
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            //interfaceOrientation = 1
            degree = 270;
        } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
            //interfaceOrientation = 2
            degree = 90;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
            //interfaceOrientation = 3
            degree = 180;
        } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
            //interfaceOrientation = 4
            degree = 0;
        }
        //可以看出，是在AVCaptureVideoOrientationPortrait结果的基础上，加了270
    }
    */
    
    if (interfaceOrientation == UIInterfaceOrientationPortrait) {
        //interfaceOrientation = 1
        degree = 0;
    } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
        //interfaceOrientation = 2
        degree = 180;
    } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
        //interfaceOrientation = 3
        degree = -90;
    } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
        //interfaceOrientation = 4
        degree = 90;
    }

    if (videoOrientation == AVCaptureVideoOrientationPortrait) {
        //videoOrientation = 1
    }
    else if (videoOrientation == AVCaptureVideoOrientationPortraitUpsideDown) {
        //videoOrientation = 2
        degree += 180;
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeRight) {
        //videoOrientation = 3
        degree += 90;
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeLeft) {
        //videoOrientation = 4
        degree += -90;
    }
    
    return degree;
}


/**
 对比以上两个方法，可以看出来，前置摄像头画面的旋转方的角度跟后置摄像头是不一样的：
 对于backCamera，设备怎么转，camera怎么转就可以了，
 对于frontCamera，设备怎么转，camera要反过来转；
 这里将 顺时针转270 改为 逆时针转90 比较好对比，
 其实frontCamera旋转的角度，刚好就是 负的backCamera旋转的角度；
 为什么会这样呢？
 1是因为旋转的数学原理，360度一圈，顺时针转x度跟逆时针转（360-x）度是完全一样的；
 2是因为前后摄像头自己的方向：
 backCamera是背对我们，而frontCamera是正对我们，
 当把手机旋转x角度时，backCamera就是跟着旋转了x角度，
 而从frontCamera的角度来看，其实是旋转了-x角度！！！
 综上所述，以上两个方法其实可以改为一个方法
 */
+ (CGFloat)degreeToRoateForCameraWithVideoOrientation:(AVCaptureVideoOrientation)videoOrientation interfaceOrientation:(UIInterfaceOrientation)interfaceOrientation isFrontCamera:(BOOL)isFrontCamera {
    CGFloat degree = 0;
    if (interfaceOrientation == UIInterfaceOrientationPortrait) {
        //interfaceOrientation = 1
        degree = 0;
    } else if (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
        //interfaceOrientation = 2
        degree = 180;
    } else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {//home button on the right
        //interfaceOrientation = 3
        degree = -90;
    } else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {//home button on the left
        //interfaceOrientation = 4
        degree = 90;
    }

    if (videoOrientation == AVCaptureVideoOrientationPortrait) {
        //videoOrientation = 1
    }
    else if (videoOrientation == AVCaptureVideoOrientationPortraitUpsideDown) {
        //videoOrientation = 2
        degree += 180;
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeRight) {
        //videoOrientation = 3
        degree += 90;
    }
    else if (videoOrientation == AVCaptureVideoOrientationLandscapeLeft) {
        //videoOrientation = 4
        degree += -90;
    }
    
    return isFrontCamera ? -degree : degree;
}

#pragma mark - ConvenientMethod

+ (CGFloat)degreeToRoateForFrontCameraWithInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return [self degreeToRoateForCameraWithVideoOrientation:AVCaptureVideoOrientationLandscapeLeft interfaceOrientation:interfaceOrientation isFrontCamera:YES];
}

+ (CGFloat)degreeToRoateForBackCameraWithInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return [self degreeToRoateForCameraWithVideoOrientation:AVCaptureVideoOrientationLandscapeRight interfaceOrientation:interfaceOrientation isFrontCamera:NO];
}

@end

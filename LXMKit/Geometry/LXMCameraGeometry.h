//
//  LXMCameraGeometry.h
//  LXMKit
//
//  Created by billthaslu on 2022/2/18.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>


NS_ASSUME_NONNULL_BEGIN

/**
 摄像头角度计算相关方法
 */
@interface LXMCameraGeometry : NSObject

/// 根据相机的videoConnection设置及当期的设备方向来计算画面旋转角度，使自己看到的画面始终是正向的
/// @param videoOrientation 相机的videoConnection设置的方向，没设置时，前置摄像头默认是AVCaptureVideoOrientationLandscapeLeft,
/// 后置摄像头默认是UIDeviceOrientationLandscapeRight
/// @param interfaceOrientation 当前设备方向
/// @param isFrontCamera 是否是前置摄像头
+ (CGFloat)degreeToRoateForCameraWithVideoOrientation:(AVCaptureVideoOrientation)videoOrientation interfaceOrientation:(UIInterfaceOrientation)interfaceOrientation isFrontCamera:(BOOL)isFrontCamera;

/// 前置摄像头没有设置videoOrientation时的计算方法，即使用AVCaptureVideoOrientationLandscapeLeft
+ (CGFloat)degreeToRoateForFrontCameraWithInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

/// 后置摄像头没有设置videoOrientation时的计算方法，即使用UIDeviceOrientationLandscapeRight
+ (CGFloat)degreeToRoateForBackCameraWithInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

@end

NS_ASSUME_NONNULL_END

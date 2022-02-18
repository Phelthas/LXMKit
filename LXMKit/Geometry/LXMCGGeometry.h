//
//  LXMCGGeometry.h
//  LXMKit
//
//  Created by billthaslu on 2021/12/31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


FOUNDATION_EXTERN CGPoint CGRectGetTopLeftPoint(CGRect rect);

FOUNDATION_EXTERN CGPoint CGRectGetTopRightPoint(CGRect rect);

FOUNDATION_EXTERN CGPoint CGRectGetBottomLeftPoint(CGRect rect);

FOUNDATION_EXTERN CGPoint CGRectGetBottomRightPoint(CGRect rect);


@interface LXMCGGeometry : NSObject

@end

NS_ASSUME_NONNULL_END

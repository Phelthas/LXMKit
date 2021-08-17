//
//  LXMAspectUtil.h
//  LXMKit
//
//  Created by billthaslu on 2021/5/26.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN


/// srcSize以aspectFill的方式充满dstSize时，srcSize需要缩放的比例
static inline CGFloat LXMAspectFillScale(CGSize srcSize, CGSize dstSize);

/// srcSize以aspectFit的方式充满dstSize时，srcSize需要缩放的比例
static inline CGFloat LXMAspectFitScale(CGSize srcSize, CGSize dstSize);


@interface LXMAspectUtil : NSObject


/// srcSize 以aspectFill方式缩放到dstSize时的实际大小
+ (CGSize)aspectFillSizeForSourceSize:(CGSize)srcSize destinationSize:(CGSize)dstSize;

/// 归一化的aspectFillSize；宽为1，高按比例剪裁，或者高为1，宽按比例剪裁
+ (CGSize)normalizedAspectFillSizeForSourceSize:(CGSize)srcSize destinationSize:(CGSize)dstSize;

/// srcSize 以aspectFit方式缩放到dstSize时的实际大小
+ (CGSize)aspectFitSizeForSourceSize:(CGSize)srcSize destinationSize:(CGSize)dstSize;

@end

NS_ASSUME_NONNULL_END

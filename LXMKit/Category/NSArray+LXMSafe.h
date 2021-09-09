//
//  NSArray+LXMSafe.h
//  LXMKit
//
//  Created by billthaslu on 2021/6/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (LXMSafe)

- (id)safeObjectAtIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END

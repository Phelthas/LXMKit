//
//  NSArray+LXMSafe.m
//  LXMKit
//
//  Created by billthaslu on 2021/6/21.
//

#import "NSArray+LXMSafe.h"

@implementation NSArray (LXMSafe)

- (id)safeObjectAtIndex:(NSInteger)index {
    if (index >= 0 && index < self.count) {
        return [self objectAtIndex:index];
    }
    return nil;
}

@end

//
//  LXMDemoEntranceModel.h
//  LXMKit
//
//  Created by billthaslu on 2021/6/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^LXMEntranceCallback)(UINavigationController *nav);

@interface LXMDemoEntranceModel : NSObject

@property (nonatomic, copy) NSString *entranceName;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) LXMEntranceCallback actionBlock;

+ (instancetype)entranceModelWithName:(NSString *)name;
+ (instancetype)entranceModelWithName:(NSString *)name desc:(nullable NSString *)desc;

@end

NS_ASSUME_NONNULL_END

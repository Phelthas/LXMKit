//
//  LXMDemoListViewController.h
//  LXMKit
//
//  Created by billthaslu on 2021/6/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class LXMDemoEntranceModel;

@interface LXMDemoListViewController : UIViewController

@property (nonatomic, strong) NSArray<LXMDemoEntranceModel *> *dataArray;

@end

NS_ASSUME_NONNULL_END

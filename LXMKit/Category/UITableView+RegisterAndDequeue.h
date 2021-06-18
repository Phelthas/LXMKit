//
//  UITableView+RegisterAndDequeue.h
//  LXMKit
//
//  Created by billthaslu on 2021/6/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (RegisterAndDequeue)

- (void)lxm_registerCellNib:(Class)cellClass;
- (void)lxm_registerCellClass:(Class)cellClass;

- (void)lxm_registerHeaderFooterNib:(Class)headerFooterViewClass;
- (void)lxm_registerHeaderFooterClass:(Class)headerFooterViewClass;

- (nullable __kindof UITableViewCell *)lxm_dequeueReusableCellWithClass:(Class)cellClass forIndexPath:(NSIndexPath *)indexPath;
- (nullable __kindof UITableViewHeaderFooterView *)lxm_dequeueReusableHeaderFooterViewWithClass:(Class)headerFooterViewClass;

@end


@interface UITableViewCell (RegisterAndDequeue)

+ (NSString *)lxm_reuseIdentifier;

+ (UINib *)lxm_nib;

@end


@interface UITableViewHeaderFooterView (RegisterAndDequeue)

+ (NSString *)lxm_reuseIdentifier;

+ (UINib *)lxm_nib;

@end




NS_ASSUME_NONNULL_END

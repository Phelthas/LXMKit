//
//  UICollectionView+RegisterAndDequeue.h
//  LXMKit
//
//  Created by billthaslu on 2021/6/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (RegisterAndDequeue)


- (void)lxm_registerCellNib:(Class)cellClass;
- (void)lxm_registerCellClass:(Class)cellClass;


- (void)lxm_registerSupplementaryViewNib:(Class)supplementaryViewClass kind:(NSString *)kind;
- (void)lxm_registerSupplementaryViewClass:(Class)supplementaryViewClass kind:(NSString *)kind;

- (nullable __kindof UICollectionViewCell *)lxm_dequeueReusableCellWithClass:(Class)cellClass forIndexPath:(NSIndexPath *)indexPath;
- (nullable __kindof UICollectionReusableView *)lxm_dequeueReusableSupplementaryViewWithClass:(Class)supplementaryViewClass kind:(NSString *)kind forIndexPath:(NSIndexPath *)indexPath;

@end





@interface UICollectionReusableView (RegisterAndDequeue)

+ (NSString *)lxm_reuseIdentifier;

+ (UINib *)lxm_nib;

@end

NS_ASSUME_NONNULL_END

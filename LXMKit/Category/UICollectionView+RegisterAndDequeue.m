//
//  UICollectionView+RegisterAndDequeue.m
//  LXMKit
//
//  Created by billthaslu on 2021/6/18.
//

#import "UICollectionView+RegisterAndDequeue.h"

@implementation UICollectionView (RegisterAndDequeue)

- (void)lxm_registerCellNib:(Class)cellClass {
    [self registerNib:[cellClass lxm_nib] forCellWithReuseIdentifier:[cellClass lxm_reuseIdentifier]];
}

- (void)lxm_registerCellClass:(Class)cellClass {
    [self registerClass:cellClass forCellWithReuseIdentifier:[cellClass lxm_reuseIdentifier]];
}


- (void)lxm_registerSupplementaryViewNib:(Class)supplementaryViewClass kind:(NSString *)kind {
    [self registerNib:[supplementaryViewClass lxm_nib] forSupplementaryViewOfKind:kind withReuseIdentifier:[supplementaryViewClass lxm_reuseIdentifier]];
}

- (void)lxm_registerSupplementaryViewClass:(Class)supplementaryViewClass kind:(NSString *)kind {
    [self registerClass:supplementaryViewClass forSupplementaryViewOfKind:kind withReuseIdentifier:[supplementaryViewClass lxm_reuseIdentifier]];
}



- (nullable __kindof UICollectionViewCell *)lxm_dequeueReusableCellWithClass:(Class)cellClass forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableCellWithReuseIdentifier:[cellClass lxm_reuseIdentifier] forIndexPath:indexPath];
}

- (nullable __kindof UICollectionReusableView *)lxm_dequeueReusableSupplementaryViewWithClass:(Class)supplementaryViewClass kind:(NSString *)kind forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:[supplementaryViewClass lxm_reuseIdentifier] forIndexPath:indexPath];
}

@end


@implementation UICollectionReusableView (RegisterAndDequeue)

+ (NSString *)lxm_reuseIdentifier {
    return NSStringFromClass([self class]);
}

+ (UINib *)lxm_nib {
    return [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
}

@end

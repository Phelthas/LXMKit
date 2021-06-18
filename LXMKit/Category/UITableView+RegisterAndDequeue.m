//
//  UITableView+RegisterAndDequeue.m
//  LXMKit
//
//  Created by billthaslu on 2021/6/17.
//

#import "UITableView+RegisterAndDequeue.h"


@implementation UITableView (RegisterAndDequeue)

- (void)lxm_registerCellNib:(Class)cellClass {
    [self registerNib:[cellClass lxm_nib] forCellReuseIdentifier:[cellClass lxm_reuseIdentifier]];
}

- (void)lxm_registerCellClass:(Class)cellClass {
    [self registerClass:cellClass forCellReuseIdentifier:[cellClass lxm_reuseIdentifier]];
}



- (void)lxm_registerHeaderFooterNib:(Class)headerFooterViewClass {
    [self registerNib:[headerFooterViewClass lxm_nib] forHeaderFooterViewReuseIdentifier:[headerFooterViewClass lxm_reuseIdentifier]];
}

- (void)lxm_registerHeaderFooterClass:(Class)headerFooterViewClass {
    [self registerClass:headerFooterViewClass forHeaderFooterViewReuseIdentifier:[headerFooterViewClass lxm_reuseIdentifier]];
}



- (nullable __kindof UITableViewCell *)lxm_dequeueReusableCellWithClass:(Class)cellClass forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableCellWithIdentifier:[cellClass lxm_reuseIdentifier] forIndexPath:indexPath];
}

- (nullable __kindof UITableViewHeaderFooterView *)lxm_dequeueReusableHeaderFooterViewWithClass:(Class)headerFooterViewClass {
    return [self dequeueReusableHeaderFooterViewWithIdentifier:[headerFooterViewClass lxm_reuseIdentifier]];
}

@end




@implementation UITableViewCell (RegisterAndDequeue)

+ (NSString *)lxm_reuseIdentifier {
    return NSStringFromClass([self class]);
}

+ (UINib *)lxm_nib {
    return [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
}

@end



@implementation UITableViewHeaderFooterView (RegisterAndDequeue)

+ (NSString *)lxm_reuseIdentifier {
    return NSStringFromClass([self class]);
}

+ (UINib *)lxm_nib {
    return [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
}

@end





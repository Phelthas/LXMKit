//
//  LXMDeviceUtil.m
//  TEST_Temp
//
//  Created by billthaslu on 2020/9/9.
//  Copyright © 2020 billthaslu. All rights reserved.
//

#import "LXMDeviceUtil.h"
#import <sys/utsname.h>

static NSDictionary *kNameTypeDict;
static NSDictionary *kTypeNameDict;

@implementation LXMDeviceUtil

+ (NSDictionary *)nameTypeDict {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        kNameTypeDict = @{
            kDeviceTypeiPhone :         @"iPhone1,1",
            kDeviceTypeiPhone3G :    @"iPhone1,2",
            kDeviceTypeiPhone3GS :    @"iPhone2,1",
            kDeviceTypeiPhone4 :    @[@"iPhone3,1", @"iPhone3,2", @"iPhone3,3"],
            kDeviceTypeiPhone4S :    @"iPhone4,1",
            kDeviceTypeiPhone5 :    @[@"iPhone5,1", @"iPhone5,2"],
            kDeviceTypeiPhone5C :    @[@"iPhone5,3", @"iPhone5,4"],
            kDeviceTypeiPhone5S :    @[@"iPhone6,1", @"iPhone6,2"],
            kDeviceTypeiPhone6 :    @"iPhone7,2",
            kDeviceTypeiPhone6Plus :    @"iPhone7,1",
            kDeviceTypeiPhone6S :    @"iPhone8,1",
            kDeviceTypeiPhone6SPlus :    @"iPhone8,2",
            kDeviceTypeiPhoneSE :    @"iPhone8,4",
            kDeviceTypeiPhone7 :    @[@"iPhone9,1", @"iPhone9,3"],
            kDeviceTypeiPhone7Plus :    @[@"iPhone9,2", @"iPhone9,4"],
            kDeviceTypeiPhone8 :    @[@"iPhone10,1", @"iPhone10,4"],
            kDeviceTypeiPhone8Plus :    @[@"iPhone10,2", @"iPhone10,5"],
            kDeviceTypeiPhoneX :    @[@"iPhone10,3", @"iPhone10,6"],
            kDeviceTypeiPhoneXR :    @"iPhone11,8",
            kDeviceTypeiPhoneXS :    @"iPhone11,2",
            kDeviceTypeiPhone11 :    @"iPhone12,1",
            kDeviceTypeiPhone11Pro :    @"iPhone12,3",
            kDeviceTypeiPhoneXSMax :    @[@"iPhone11,6", @"iPhone11,4"],
            kDeviceTypeiPhone11ProMax :    @"iPhone12,5",
            kDeviceTypeiPhoneSE2 :    @"iPhone12,8",
            kDeviceTypeiPhone12mini :    @"iPhone13,1",
            kDeviceTypeiPhone12 :    @"iPhone13,2",
            kDeviceTypeiPhone12Pro :    @"iPhone13,3",
            kDeviceTypeiPhone12ProMax :    @"iPhone13,4",
            kDeviceTypeiPhoneSE3 :    @"iPhone14,6",
            kDeviceTypeiPhone13mini :    @"iPhone14,4",
            kDeviceTypeiPhone13 :    @"iPhone14,5",
            kDeviceTypeiPhone13Pro :    @"iPhone14,2",
            kDeviceTypeiPhone13ProMax :    @"iPhone14,3",
            kDeviceTypeiPhone14 :    @"iPhone14,7",
            kDeviceTypeiPhone14Plus :    @"iPhone14,8",
            kDeviceTypeiPhone14Pro :    @"iPhone15,2",
            kDeviceTypeiPhone14ProMax :    @"iPhone15,3",
            kDeviceTypeiPhone15 :    @"iPhone15,4",
            kDeviceTypeiPhone15Plus :    @"iPhone15,5",
            kDeviceTypeiPhone15Pro :    @"iPhone16,1",
            kDeviceTypeiPhone15ProMax :    @"iPhone16,2",
            kDeviceTypeiPhone16 :    @"iPhone17,3",
            kDeviceTypeiPhone16Plus :    @"iPhone17,4",
            kDeviceTypeiPhone16Pro :    @"iPhone17,1",
            kDeviceTypeiPhone16ProMax :    @"iPhone17,2",
            kDeviceTypeiPhone16e :    @"iPhone17,5",
        };
        
    });
    return kNameTypeDict;
}

+ (NSDictionary *)typeNameDict {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        kTypeNameDict = @{
            @"iPhone1,1" : kDeviceTypeiPhone,
            @"iPhone1,2" : kDeviceTypeiPhone3G,
            @"iPhone2,1" : kDeviceTypeiPhone3GS,
            @"iPhone3,1" : kDeviceTypeiPhone4,
            @"iPhone3,2" : kDeviceTypeiPhone4,
            @"iPhone3,3" : kDeviceTypeiPhone4,
            @"iPhone4,1" : kDeviceTypeiPhone4S,
            
            @"iPhone5,1" : kDeviceTypeiPhone5,
            @"iPhone5,2" : kDeviceTypeiPhone5,
            @"iPhone5,3" : kDeviceTypeiPhone5C,
            @"iPhone5,4" : kDeviceTypeiPhone5C,
            
            @"iPhone6,1" : kDeviceTypeiPhone5S,
            @"iPhone6,2" : kDeviceTypeiPhone5S,
            
            @"iPhone7,1" : kDeviceTypeiPhone6Plus,
            @"iPhone7,2" : kDeviceTypeiPhone6,
            
            @"iPhone8,1" : kDeviceTypeiPhone6S,
            @"iPhone8,2" : kDeviceTypeiPhone6SPlus,
            @"iPhone8,4" : kDeviceTypeiPhoneSE,
            
            @"iPhone9,1" : kDeviceTypeiPhone7,
            @"iPhone9,2" : kDeviceTypeiPhone7Plus,
            @"iPhone9,3" : kDeviceTypeiPhone7,
            @"iPhone9,4" : kDeviceTypeiPhone7Plus,
            
            @"iPhone10,1" : kDeviceTypeiPhone8,
            @"iPhone10,2" : kDeviceTypeiPhone8Plus,
            @"iPhone10,3" : kDeviceTypeiPhoneX,
            @"iPhone10,4" : kDeviceTypeiPhone8,
            @"iPhone10,5" : kDeviceTypeiPhone8Plus,
            @"iPhone10,6" : kDeviceTypeiPhoneX,
            
            @"iPhone11,2" : kDeviceTypeiPhoneXS,
            @"iPhone11,8" : kDeviceTypeiPhoneXR,
            @"iPhone11,4" : kDeviceTypeiPhoneXSMax,
            @"iPhone11,6" : kDeviceTypeiPhoneXSMax,
            
            @"iPhone12,1" : kDeviceTypeiPhone11,
            @"iPhone12,3" : kDeviceTypeiPhone11Pro,
            @"iPhone12,5" : kDeviceTypeiPhone11ProMax,
            @"iPhone12,8" : kDeviceTypeiPhoneSE2,
            
            @"iPhone13,1" : kDeviceTypeiPhone12mini,
            @"iPhone13,2" : kDeviceTypeiPhone12,
            @"iPhone13,3" : kDeviceTypeiPhone12Pro,
            @"iPhone13,4" : kDeviceTypeiPhone12ProMax,
            
            @"iPhone14,2" : kDeviceTypeiPhone13Pro,
            @"iPhone14,3" : kDeviceTypeiPhone13ProMax,
            @"iPhone14,4" : kDeviceTypeiPhone13mini,
            @"iPhone14,5" : kDeviceTypeiPhone13,
            @"iPhone14,6" : kDeviceTypeiPhoneSE3,
            @"iPhone14,7" : kDeviceTypeiPhone14,
            @"iPhone14,8" : kDeviceTypeiPhone14Plus,
            
            @"iPhone15,2" : kDeviceTypeiPhone14Pro,
            @"iPhone15,3" : kDeviceTypeiPhone14ProMax,
            @"iPhone15,4" : kDeviceTypeiPhone15,
            @"iPhone15,5" : kDeviceTypeiPhone15Plus,
            
            @"iPhone16,1" : kDeviceTypeiPhone15Pro,
            @"iPhone16,2" : kDeviceTypeiPhone15ProMax,
            
            @"iPhone17,1" : kDeviceTypeiPhone16Pro,
            @"iPhone17,2" : kDeviceTypeiPhone16ProMax,
            @"iPhone17,3" : kDeviceTypeiPhone16,
            @"iPhone17,4" : kDeviceTypeiPhone16Plus,
            @"iPhone17,5" : kDeviceTypeiPhone16e,
            
        };
    });
    return kTypeNameDict;
}

+ (NSString *)nameForTypeString:(NSString *)typeString {
    NSString *result = [self typeNameDict][typeString];
    if (!result) {
        NSAssert(false, @"type is %@, name not found", typeString);
        return typeString;
    }
    return result;
}

+ (NSString *)getDeviceIdentifier {
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

+ (NSString *)getCurentDeviceName {
    return [self nameForTypeString:[self getDeviceIdentifier]];
}

#pragma mark - PrivateMethod

+ (void)unitTest {
    NSDictionary *dict = [LXMDeviceUtil typeNameDict];
    [[LXMDeviceUtil nameTypeDict] enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[NSArray class]]) {
            for (NSString *item in obj) {
                if (![dict[item] isEqualToString:key]) {
                    NSAssert(false, @"%@ not found", item);
                }
            }
        } else if ([obj isKindOfClass:[NSString class]]) {
            if (![dict[obj] isEqualToString:key]) {
                NSAssert(false, @"%@ not found", obj);
            }
        }
    }];
    
    [[LXMDeviceUtil typeNameDict] enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull testType, NSString * _Nonnull testName, BOOL * _Nonnull stop) {
        NSObject *result = [[LXMDeviceUtil nameTypeDict] objectForKey:testName];
        if ([result isKindOfClass:[NSArray class]]) {
            if (![(NSArray *)result containsObject:testType]) {
                NSAssert(false, @"%@ not found", testName);
            }
        } else if ([result isKindOfClass:[NSString class]]) {
            if (![testType isEqualToString:(NSString *)result]) {
                NSAssert(false, @"%@ not found", testName);
            }
        }
        NSLog(@"%@ -> %@", testType, testName);
    }];
    NSLog(@"unit test passed");
}

@end

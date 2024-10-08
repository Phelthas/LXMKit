//
//  LXMScreenSizeDefines.h
//  LXMKit
//
//  Created by billthaslu on 2021/5/26.
//

#ifndef LXMScreenSizeDefines_h
#define LXMScreenSizeDefines_h


#pragma mark ----------------------------------UIScreen----------------------------------

#define kMainScreenBounds      [UIScreen mainScreen].bounds
#define kMainScreenSize        kMainScreenBounds.size
#define kMainScreenWidth       kMainScreenSize.width
#define kMainScreenHeight      kMainScreenSize.height


#pragma mark ----------------------------------现有尺寸----------------------------------

#define kScreenSize320x480     CGSizeMake(320, 480)
#define kScreenSize320x568     CGSizeMake(320, 568)
#define kScreenSize375x667     CGSizeMake(375, 667)
#define kScreenSize414x736     CGSizeMake(414, 736)
#define kScreenSize375x812     CGSizeMake(375, 812)
#define kScreenSize414x896     CGSizeMake(414, 896)
#define kScreenSize390x844     CGSizeMake(390, 844)
#define kScreenSize393x852     CGSizeMake(393, 852)
#define kScreenSize428x926     CGSizeMake(428, 926)
#define kScreenSize430x932     CGSizeMake(430, 932)

#define kIPadScreenSize768x1024      CGSizeMake(768, 1024) // 3 : 4
#define kIPadScreenSize834x1112      CGSizeMake(834, 1112) // 3 : 4
#define kIPadScreenSize1024x1366     CGSizeMake(1024, 1366) // 3 : 4
#define kIPadScreenSize834x1194      CGSizeMake(834, 1194)  // 0.698
#define kIPadScreenSize810x1080      CGSizeMake(810, 1080)  // 3 : 4

#pragma mark ----------------------------------现有机型尺寸----------------------------------
// https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout/
// https://www.ios-resolution.com/

#define kScreenSizeiPhone4     kScreenSize320x480      //2x
#define kScreenSizeiPhone4S    kScreenSize320x480      //2x

#define kScreenSizeiPhone5     kScreenSize320x568      //2x
#define kScreenSizeiPhone5C    kScreenSize320x568      //2x
#define kScreenSizeiPhone5S    kScreenSize320x568      //2x
#define kScreenSizeiPhoneSE    kScreenSize320x568      //2x

#define kScreenSizeiPhone6         kScreenSize375x667      //2x
#define kScreenSizeiPhone6S        kScreenSize375x667      //2x
#define kScreenSizeiPhone7         kScreenSize375x667      //2x
#define kScreenSizeiPhone8         kScreenSize375x667      //2x
#define kScreenSizeiPhoneSE2       kScreenSize375x667      //2x
#define kScreenSizeiPhoneSE3       kScreenSize375x667      //2x

#define kScreenSizeiPhone6Plus     kScreenSize414x736      //3x
#define kScreenSizeiPhone6SPlus    kScreenSize414x736      //3x
#define kScreenSizeiPhone7Plus     kScreenSize414x736      //3x
#define kScreenSizeiPhone8Plus     kScreenSize414x736      //3x

#define kScreenSizeiPhoneX                kScreenSize375x812      //3x
#define kScreenSizeiPhoneXS               kScreenSize375x812      //3x
#define kScreenSizeiPhone11Pro            kScreenSize375x812      //3x
#define kScreenSizeiPhone12Mini           kScreenSize375x812      //3x
#define kScreenSizeiPhone13Mini           kScreenSize375x812      //3x

#define kScreenSizeiPhoneXR                  kScreenSize414x896      //2x
#define kScreenSizeiPhoneXSMax               kScreenSize414x896      //3x
#define kScreenSizeiPhone11                  kScreenSize414x896      //2x
#define kScreenSizeiPhone11ProMax            kScreenSize414x896      //3x

#define kScreenSizeiPhone12                  kScreenSize390x844      //3x
#define kScreenSizeiPhone12Pro               kScreenSize390x844      //3x
#define kScreenSizeiPhone13                  kScreenSize390x844      //3x
#define kScreenSizeiPhone13Pro               kScreenSize390x844      //3x
#define kScreenSizeiPhone14                  kScreenSize390x844      //3x

#define kScreenSizeiPhone14Pro               kScreenSize393x852      //3x
#define kScreenSizeiPhone15                  kScreenSize393x852      //3x
#define kScreenSizeiPhone15Pro               kScreenSize393x852      //3x

#define kScreenSizeiPhone12ProMax            kScreenSize428x926      //3x
#define kScreenSizeiPhone13ProMax            kScreenSize428x926      //3x
#define kScreenSizeiPhone14PLus              kScreenSize428x926      //3x

#define kScreenSizeiPhone14ProMax            kScreenSize430x932      //3x
#define kScreenSizeiPhone15PLus              kScreenSize430x932      //3x
#define kScreenSizeiPhone15ProMax            kScreenSize430x932      //3x

#endif /* LXMScreenSizeDefines_h */

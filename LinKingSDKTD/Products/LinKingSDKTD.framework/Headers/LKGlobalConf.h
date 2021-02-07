//
//  LKGlobalConf.h
//  LinKingSDK
//
//  Created by leoan on 2020/7/20.
//  Copyright © 2020 dml1630@163.com. All rights reserved.
//



#ifndef LKGlobalConf_h
#define LKGlobalConf_h


#define SDKCONFKEY @"SDKCONFTD"
#define SYSTEMSDKKEY  @"SYSTEMSDKTD"
#define USERKEY    @"USERTD"

#define kScreen_LE_Width [UIScreen mainScreen].bounds.size.width
#define kScreen_LE_Height [UIScreen mainScreen].bounds.size.height
#define kScreen_LE_Size [UIScreen mainScreen].bounds.size

// 屏幕分辨率 resolution
#define kScreen_Resolution (SCREEN_WIDTH * SCREEN_HEIGHT * ([UIScreen mainScreen].scale))

// iPhone X系列判断
#define  kIS_iPhoneX (CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size) || CGSizeEqualToSize(CGSizeMake(812.f, 375.f), [UIScreen mainScreen].bounds.size)  || CGSizeEqualToSize(CGSizeMake(414.f, 896.f), [UIScreen mainScreen].bounds.size) || CGSizeEqualToSize(CGSizeMake(896.f, 414.f), [UIScreen mainScreen].bounds.size))
// 状态栏高度
#define kStatusBarHeight (kIS_iPhoneX ? 44.f : 20.f)
// 导航栏高度
#define kNavBarHeight (44.f+StatusBarHeight)
// 底部标签栏高度
#define kTabBarHeight (kIS_iPhoneX ? (49.f+34.f) : 49.f)
// 安全区域高度
#define kTabbarSafeBottomMargin (kIS_iPhoneX ? 34.f : 0.f)






#ifdef DEBUG
    #define DLog(fmt, ...) {NSLog((fmt),##__VA_ARGS__);}
#else
    #define DLog(...)
#endif


#endif /* LKGlobalConf_h */



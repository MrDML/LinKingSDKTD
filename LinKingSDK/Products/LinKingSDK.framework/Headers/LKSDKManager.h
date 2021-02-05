//
//  LKSDKManager.h
//  LinKingSDK
//
//  Created by leoan on 2020/7/16.
//  Copyright © 2020 dml1630@163.com. All rights reserved.
//

#import <UIKit/UIKit.h>



typedef NS_ENUM(NSInteger, LKADTYPE) {
    LKADTYPE_REWARDVIDEO = 0,
    LKADTYPE_INTERSTITAL = 1,
    LKADTYPE_BANNER = 2,
};

typedef NS_ENUM(NSInteger, LKADSTATUS) {
    LKADSTATUS_SUCCESS = 0,
    LKADSTATUS_FAILURE = 1,
    LKADSTATUS_CANCEL = 2,
};


@class LKUser;
NS_ASSUME_NONNULL_BEGIN



@interface LKSDKManager : NSObject

// SDK 注册成功回调
@property (nonatomic, copy) void(^onInitFinished)(NSError * _Nullable error);
/// 授权回调
@property (nonatomic, copy) void(^onAuthFinished)(LKUser *_Nullable user ,NSError * _Nullable error);
/// 登出回调
@property (nonatomic, copy) void(^onDeauthFinished)(void);
/// 激励视频回调
@property (nonatomic, copy) void(^onRewardVideoPlay)(LKADSTATUS status,NSError * _Nullable error);
/// 插屏广告回调
@property (nonatomic, copy) void(^onInterstitialPlay)(LKADSTATUS status,NSError * _Nullable error);
/// 横屏广告回调
@property (nonatomic, copy) void(^onBannerPlay)(LKADSTATUS status,NSError * _Nullable error);
/// 获取实例对象
+ (instancetype)instance;
/// 注册SDK
/// @param appId appId description
/// @param secretkey secretkey description
- (void)initApplicationAppID:(NSString * _Nonnull)appId secretkey:(NSString * _Nonnull)secretkey cmoplete:(void(^_Nonnull)(NSError * _Nullable error))complete;
/// 展示广告
/// @param type type description
/// @param viewController viewController description
/// @param superView superView description
- (void)adShow:(LKADTYPE)type viewController:(UIViewController * _Nonnull)viewController superView:(UIView * _Nullable)superView;
// 登录
- (void)login;
// 登出
- (void)logout;
// 无参数自定义打点
- (void)logEvent:(NSString *)event;
// 有参数自定义打点
- (void)logEvent:(NSString *)event parameters:(NSDictionary * _Nullable)params;




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *_Nullable)launchOptions;

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url;

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options;



@end

NS_ASSUME_NONNULL_END

//
//  LKPointManager.h
//  LinKingSDK
//
//  Created by leoan on 2020/7/27.
//  Copyright © 2020 dml1630@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN


@interface LKPointManager : NSObject


+ (instancetype)shared;

// 广告打点
- (void)adLogEventName:(NSString *)eventName withParameters:(NSDictionary *_Nullable)params complete:(void(^_Nullable)(NSError *_Nullableerror))complete;

/// 等级
/// @param level 等级
- (void)logAchieveLevelEvent:(int )level serverId:(NSString *)serverId roleId:(NSString *)roleId roleName:(NSString *)roleName complete:(void(^_Nullable)(NSError * _Nullable error))complete;

/// 关卡
- (void)logAchieveStageEvent:(int)stage serverId:(NSString *)serverId roleId:(NSString *)roleId roleName:(NSString *)roleName complete:(void(^_Nullable)(NSError * _Nullable error))complete;


/// 新手引导
- (void)logAchieveCompleteTutorialId:(NSString *)contentId content:(NSString *)content EventServerId:(NSString *)serverId roleId:(NSString *)roleId roleName:(NSString *)roleName complete:(void(^_Nullable)(NSError * _Nullable error))complete;

/// 进入游戏
/// @param serverId 区服ID
/// @param roleId 角色ID
/// @param roleName 角色名称
/// @param enterGame 进入游戏（false单区,true多区）
/// @param complete 回调
- (void)logEnterGameServerId:(NSString *)serverId roleId:(NSString *)roleId roleName:(NSString *)roleName enterGame:(BOOL)enterGame complete:(void(^_Nullable)(NSError * _Nullable error))complete;


// 自定义打点
- (void)customeLogEventName:(NSString *)eventName withParameters:(NSDictionary * _Nullable)params complete:(void(^_Nullable)(NSError *_Nullable error))complete;
- (void)customeLogEventName:(NSString *)eventName complete:(void(^_Nullable)(NSError *_Nullable error))complete;

@end

NS_ASSUME_NONNULL_END

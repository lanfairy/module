//
//  LKAppStartManager.m
//  LKVogueModule
//
//  Created by elly on 16/2/19.
//  Copyright © 2016年 lanfairy. All rights reserved.
//  单例类

#import "LKAppStartManager.h"
#import "LKStartupViewController.h"
#import "LKGuideTheInterfaceViewController.h"

@interface LKAppStartManager()


@end

@implementation LKAppStartManager

static LKAppStartManager *_sharedSingleton = nil;
+ (LKAppStartManager *)sharedInstance {
    
    if (self != [LKAppStartManager class]) {
        
        [NSException raise:@"LKAppStartManager"
                    format:@"Cannot use sharedInstance method from subclass."];
    }
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _sharedSingleton = [[LKAppStartManager alloc] initInstance];
    });
    
    return _sharedSingleton;
}

- (instancetype)init {
    
    [NSException raise:@"LKAppStartManager"
                format:@"Cannot instantiate LKAppStartManager using init method, sharedInstance must be used."];
    
    return nil;
}

- (id)copyWithZone:(NSZone *)zone {
    
    [NSException raise:@"LKAppStartManager"
                format:@"Cannot copy LKAppStartManager using copy method, sharedInstance must be used."];
    
    return nil;
}
#pragma mark - private method

- (id)initInstance {
    
    return [super init];
}



/**
 * 1.首次启动显示默认的启动图片,显示引导界面
 * 2.非首次启动加载广告界面
 */
- (void)startManager
{
    
    // 1设置根控制器
    NSString *key = @"CFBundleVersion";
    // 上一次的使用版本（存储在沙盒中的版本号）
    NSString *lastVersion = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    // 当前软件的版本号（从Info.plist中获得）
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[key];
    
    if ([currentVersion isEqualToString:lastVersion])
    {
        // 版本号相同：这次打开和上次打开的是同一个版本
        NSLog(@"无引导页,显示启动界面");
        if ([UIScreen mainScreen].bounds.size.width < 768.f) {
            
            _startupViewController = [[LKStartupViewController alloc] initWithNibName:@"LKStartupViewController_Iphone" bundle:[NSBundle mainBundle]];
            
        }
        else
            _startupViewController = [[LKStartupViewController alloc] initWithNibName:@"LKStartupViewController_Ipad" bundle:[NSBundle mainBundle]];
        
        UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
        if (!window) {
            [NSException raise:@"LKAppStartManager" format:@"警告:Before invoking startManager method, Window cannot be nil"];
        }
        window.rootViewController = _startupViewController;
        
    }
    else { // 这次打开的版本和上一次不一样，显示引导页
        NSLog(@"有引导页");
        LKGuideTheInterfaceViewController *guideTheInterfaceViewController;
        if ([UIScreen mainScreen].bounds.size.width < 768.f) {
            
            guideTheInterfaceViewController = [[LKGuideTheInterfaceViewController alloc] initWithNibName:@"LKGuideTheInterfaceViewController_Iphone" bundle:[NSBundle mainBundle]];
            
        }
        else
            guideTheInterfaceViewController = [[LKGuideTheInterfaceViewController alloc] initWithNibName:@"LKGuideTheInterfaceViewController_Ipad" bundle:[NSBundle mainBundle]];
        UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
        if (!window) {
            [NSException raise:@"LKStartupViewController" format:@"警告:Before invoking startManager method, Window cannot be nil"];
        }
        window.rootViewController = guideTheInterfaceViewController;
        
        // 将当前的版本号存进沙盒
        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:key];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }

   
    
}




- (void)dealloc
{
    NSLog(@"lkappstartManager");
}
@end

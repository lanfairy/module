//
//  LKStartupViewController.m
//  LKVogueModule
//
//  Created by elly on 16/2/19.
//  Copyright © 2016年 lanfairy. All rights reserved.
//

#import "LKStartupViewController.h"
#import "LKGuideTheInterfaceViewController.h"
@interface LKStartupViewController ()

@end

@implementation LKStartupViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    // 1.背景图片
//    UIImageView *bg = [[UIImageView alloc] init];
//    bg.image = [UIImage imageNamed:@"Default"];
//    bg.frame = self.view.bounds;
//    [self.view addSubview:bg];
//    
//    // 2.广告图片(真实的广告图片应该要先下载广告图片)
//    UIImageView *ad = [[UIImageView alloc] init];
//    ad.image = [UIImage imageNamed:@"ad"];
//    ad.width = 280;
//    ad.height = 300;
//    ad.centerX = self.view.width * 0.5;
//    ad.y = 60;
//    [self.view addSubview:ad];
//    
//    // 3.2s后调到下一个主界面
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        UIWindow *window = [UIApplication sharedApplication].keyWindow;
//        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        window.rootViewController = [storyboard instantiateViewControllerWithIdentifier:@"Main"];
//    });
//
    
    // 2.引导界面
    // 2.1设置根控制器
//    NSString *key = @"CFBundleVersion";
//    // 上一次的使用版本（存储在沙盒中的版本号）
//    NSString *lastVersion = [[NSUserDefaults standardUserDefaults] objectForKey:key];
//    // 当前软件的版本号（从Info.plist中获得）
//    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[key];
//    
//    if ([currentVersion isEqualToString:lastVersion])
//    {
//        // 版本号相同：这次打开和上次打开的是同一个版本
//        NSLog(@"无引导页");
//    }
//    else { // 这次打开的版本和上一次不一样，显示引导页
//        sleep(5);
//        NSLog(@"有引导页");
//        LKGuideTheInterfaceViewController *guideTheInterfaceViewController;
//        if ([UIScreen mainScreen].bounds.size.width < 768.f) {
//            
//            guideTheInterfaceViewController = [[LKGuideTheInterfaceViewController alloc] initWithNibName:@"LKGuideTheInterfaceViewController_Iphone" bundle:[NSBundle mainBundle]];
//            
//        }
//        else
//            guideTheInterfaceViewController = [[LKGuideTheInterfaceViewController alloc] initWithNibName:@"LKGuideTheInterfaceViewController_Ipad" bundle:[NSBundle mainBundle]];
//        UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
//        if (!window) {
//            [NSException raise:@"LKStartupViewController" format:@"警告:Before invoking startManager method, Window cannot be nil"];
//        }
//        window.rootViewController = guideTheInterfaceViewController;
//        
//        // 将当前的版本号存进沙盒
//        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:key];
//        [[NSUserDefaults standardUserDefaults] synchronize];
//    }
//
//    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

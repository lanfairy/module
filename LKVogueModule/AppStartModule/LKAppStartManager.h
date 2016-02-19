//
//  LKAppStartManager.h
//  LKVogueModule
//
//  Created by elly on 16/2/19.
//  Copyright © 2016年 lanfairy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LKStartupViewController;
@class LKGuideTheInterfaceViewController;

@interface LKAppStartManager : NSObject
//  启动过程界面
@property (nonatomic, strong) LKStartupViewController *startupViewController;
//  引导界面
@property (nonatomic, strong) LKGuideTheInterfaceViewController *guideTheInterfaceViewController;
+ (LKAppStartManager *)sharedInstance;
- (void)startManager;
@end

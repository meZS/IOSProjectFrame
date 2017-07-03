//
//  WDTabBarViewController.m
//  IosProjectFrame
//
//  Created by wordy on 2017/6/30.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "WDTabBarViewController.h"
#import "WDHomeViewController.h"
#import "WDMusicViewController.h"
#import "WDBookViewController.h"
#import "WDPersonViewController.h"
#import "WDNavViewController.h"

@interface WDTabBarViewController ()

@end

@implementation WDTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    WDHomeViewController *homeVC = [[WDHomeViewController alloc] init];
    [self initWithConttroller:homeVC title:@"首页" image:@"cute_shafa_01"selectedImage:@"cute_shafa_05"];
    
    WDMusicViewController *musicVC = [[WDMusicViewController alloc] init];
    [self initWithConttroller:musicVC title:@"音乐" image:@"cute_shafa_02"selectedImage:@"cute_shafa_06"];
  
    WDBookViewController *bookVC = [[WDBookViewController alloc] init];
    [self initWithConttroller:bookVC title:@"阅读" image:@"cute_shafa_03" selectedImage:@"cute_shafa_07"];
    
    WDPersonViewController *personVC = [[WDPersonViewController alloc] init];
    [self initWithConttroller:personVC title:@"个人" image:@"cute_shafa_04" selectedImage:@"cute_shafa_08"];
    
    
}

- (void)initWithConttroller:(UIViewController *)childVC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImg
{
    
    childVC.title = title; //同时设置tabbar和Nav标题
//    childVC.navigationItem.title = @"首页"; // 设置导航标题
    childVC.tabBarItem.title = title; // 设置tabbar标题
    childVC.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    WDNavViewController *navVC = [[WDNavViewController alloc] initWithRootViewController:childVC];
    [self addChildViewController:navVC];
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

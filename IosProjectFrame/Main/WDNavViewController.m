
//
//  WDNavViewController.m
//  IosProjectFrame
//
//  Created by wordy on 2017/6/30.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "WDNavViewController.h"


@interface WDNavViewController ()

@end

@implementation WDNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
/*
  *  重写这个方法目的,能够拦截所有push进来的控制器
  *  @param viewController 即将push进来的控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
//        如果大于0,这是push进来的控制器,不是第一个控制器
    if (self.viewControllers.count > 0) {
        /* 自动显示和隐藏tabbar */
        viewController.hidesBottomBarWhenPushed = YES;
        
         //  设置左边的返回按钮
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] itemWithTarget:self action:@selector(back) image:@"back" highImage:@""];
         // 设置右边的更多按钮
        viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] itemWithTarget:self action:@selector(more) image:@"add" highImage:@""];
    }
    
    [super pushViewController:viewController animated:YES];

    
}
- (void)back
{
    [self popViewControllerAnimated:YES];
}
- (void)more
{
    [self popToRootViewControllerAnimated:YES];
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

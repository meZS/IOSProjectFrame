//
//  WDHomeViewController.m
//  IosProjectFrame
//
//  Created by wordy on 2017/6/30.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "WDHomeViewController.h"
#import "WDPhotoViewController.h"
@interface WDHomeViewController ()

@end

@implementation WDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn =  [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0,80, 200, 80);
    btn.center = self.view.center;
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor  orangeColor]];
    [btn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
   
}
- (void)action
{
    [self.navigationController pushViewController:[WDPhotoViewController new] animated:YES];
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

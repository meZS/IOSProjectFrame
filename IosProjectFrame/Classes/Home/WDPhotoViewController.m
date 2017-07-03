
//
//  WDPhotoViewController.m
//  IosProjectFrame
//
//  Created by wordy on 2017/6/30.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "WDPhotoViewController.h"
@interface WDPhotoViewController ()

@end

@implementation WDPhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"照片";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor redColor];
    
    
//      self.navigationController.navigationItem.rightBarButtonItem = [[UIBarButtonItem init] itemWithTarget:self action:@selector(moredd) title:@"更多"];
}
- (void)moredd
{
    
    
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

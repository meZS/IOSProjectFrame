//
//  WDTabBarViewController.h
//  IosProjectFrame
//
//  Created by wordy on 2017/6/30.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WDTabBarViewController : UITabBarController


- (void)initWithConttroller:(UIViewController *)childVC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImg;

@end

//
//  UIBarButtonItem+Button.m
//  IosProjectFrame
//
//  Created by wordy on 2017/6/30.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "UIBarButtonItem+Button.h"
#import "UIView+Extension.h"  // 最好放在.pch文件中,方便使用
@implementation UIBarButtonItem (Button)


- (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
//    btn.size = btn.currentBackgroundImage.size;
    btn.frame = CGRectMake(0, 0, 40, 20);
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
- (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 40, 20);
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}



@end

//
//  UIBarButtonItem+Button.h
//  IosProjectFrame
//
//  Created by wordy on 2017/6/30.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Button)

/*    创建一个 item
 *    针对图片
 *    @param target 点击item调用那个对象的方法
 *    @param action 点击item后调用target的哪个方法
 *    @param image  图片
 *    @param target  高亮的图片
 */

- (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

/*    创建一个 item
 *    针对标题
 *    @param target 点击item调用那个对象的方法
 *    @param action 点击item后调用target的哪个方法
 *    @param title  导航的title
 */
- (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title;

@end

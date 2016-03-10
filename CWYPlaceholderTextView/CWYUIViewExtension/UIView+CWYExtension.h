//
//  UIView+CWYExtension.m
//  CWYPlaceholderTextViewExample
//
//  Created by YaAsk.CHINA on 16/3/10.
//  Copyright © 2016年 YaAsk.CHINA. All rights reserved.
//  you can set UIView's size\width\height\x\y\centerX\centerY directly
//  also you can judge if UIView is showing on keyWindow otherwise not outof viewport

#import <UIKit/UIKit.h>

@interface UIView (CWYExtension)
@property(nonatomic, assign)CGSize size;
@property(nonatomic, assign)CGFloat width;
@property(nonatomic, assign)CGFloat height;
@property(nonatomic, assign)CGFloat x;
@property(nonatomic, assign)CGFloat y;
@property(nonatomic, assign)CGFloat centerX;
@property(nonatomic, assign)CGFloat centerY;
-(BOOL)isShowingOnKeyWindow;
@end

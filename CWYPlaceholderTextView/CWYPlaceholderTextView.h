//
//  CWYPlaceholderTextView.m
//  CWYPlaceholderTextViewExample
//
//  Created by YeAsk.CHINA on 16/3/10.
//  Copyright © 2016年 YeAsk.CHINA. All rights reserved.
//  a TextField that can support wrap line and set placeholder text

#import <UIKit/UIKit.h>

@interface CWYPlaceholderTextView : UITextView
/** placeholder text */
@property(nonatomic, copy)NSString *placeholder;
/** placeholder textColor */
@property(nonatomic, strong)UIColor *placeholderColor;
@end
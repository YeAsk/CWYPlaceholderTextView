//
//  ViewController.m
//  CWYPlaceholderTextViewExample
//
//  Created by 蔡文宇 on 16/3/10.
//  Copyright © 2016年 YaAsk. All rights reserved.
//

#import "ViewController.h"
#import "CWYPlaceholderTextView.h"

#define ScreenW  [UIScreen mainScreen].bounds.size.width
#define FontSize15 [UIFont systemFontOfSize:15]
#define NoteCenter [NSNotificationCenter defaultCenter]
#define GrayColor [UIColor grayColor]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CWYPlaceholderTextView *textView = [[CWYPlaceholderTextView alloc] init];
    textView.placeholderColor = GrayColor;
    textView.frame = self.view.bounds;
    textView.placeholder = @"this is placeholder";
    [self.view addSubview:textView];
}
@end

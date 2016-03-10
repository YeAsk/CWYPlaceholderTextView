//
//  ViewController.m
//  CWYPlaceholderTextViewExample
//
//  Created by 蔡文宇 on 16/3/10.
//  Copyright © 2016年 YaAsk. All rights reserved.
//

#import "ViewController.h"
#import "CWYPlaceholderTextView.h"
#import "UIView+CWYExtension.h"

#define ScreenW  [UIScreen mainScreen].bounds.size.width
#define FontSize15 [UIFont systemFontOfSize:15]
#define NoteCenter [NSNotificationCenter defaultCenter]
#define GrayColor [UIColor grayColor]

@interface ViewController ()
/** placeholderTextView */
@property(nonatomic, weak)CWYPlaceholderTextView *placeholderTextView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CWYPlaceholderTextView *textView = [[CWYPlaceholderTextView alloc] init];
    textView.placeholderColor = GrayColor;
    textView.frame = self.view.bounds;
    textView.height = 200;
    textView.placeholderColor = [UIColor purpleColor];
    textView.backgroundColor = [UIColor orangeColor];
    textView.placeholder = @"this is placeholder";
    [self.view addSubview:textView];
    self.placeholderTextView = textView;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.placeholderTextView.placeholder = @"this is hello world text placed";
    self.placeholderTextView.placeholderColor = [UIColor greenColor];
    self.placeholderTextView.width = 100;
    self.placeholderTextView.height = 100;
    self.placeholderTextView.backgroundColor = [UIColor yellowColor];
}

@end

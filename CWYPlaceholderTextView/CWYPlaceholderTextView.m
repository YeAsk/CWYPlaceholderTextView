//
//  CWYPlaceholderTextView.m
//  CWYPlaceholderTextViewExample
//
//  Created by YeAsk.CHINA on 16/3/10.
//  Copyright © 2016年 YeAsk.CHINA. All rights reserved.
//  a TextField that can support wrap line and set placeholder text


#define ScreenW  [UIScreen mainScreen].bounds.size.width
#define FontSize15 [UIFont systemFontOfSize:15]
#define NoteCenter [NSNotificationCenter defaultCenter]
#define GrayColor [UIColor grayColor]

#import "CWYPlaceholderTextView.h"
#import "UIView+CWYExtension.h"

@interface CWYPlaceholderTextView()
/** placeholderlabel */
@property(nonatomic, weak)UILabel *placeholderLabel;
@end


@implementation CWYPlaceholderTextView

/** lazyload set placeholderLabel */
-(UILabel *)placeholderLabel{
    if (_placeholderLabel == nil) {
        UILabel *placeholderLabel = [[UILabel alloc] init];
        placeholderLabel.x = 4;
        placeholderLabel.y = 7;
        placeholderLabel.hidden = NO;
        placeholderLabel.numberOfLines = 0;
        [self addSubview:placeholderLabel];
        _placeholderLabel = placeholderLabel;
    }
    return _placeholderLabel;
}
-(void)layoutSubviews{

    self.placeholderLabel.width = self.width - 2 * self.placeholderLabel.x;
    [self.placeholderLabel sizeToFit];
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //Vertical direction always has the effect of spring
        self.alwaysBounceVertical = YES;
        self.font = FontSize15;
        self.placeholderColor = GrayColor;
        self.placeholder = @"type your placeholder text here please";
        [NoteCenter addObserver:self selector:@selector(textDidChanged) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}


-(void)textDidChanged{
    self.placeholderLabel.hidden = self.hasText;
}

-(void)setFont:(UIFont *)font{
    [super setFont:font];
    self.placeholderLabel.font = font;
    [self setNeedsLayout];
}
-(void)setText:(NSString *)text{
    [super setText:text];
    [self textDidChanged];
    
}
-(void)setAttributedText:(NSAttributedString *)attributedText{
    [super setAttributedText:attributedText];
    [self textDidChanged];
}

-(void)setPlaceholderColor:(UIColor *)placeholderColor{
    _placeholderColor = placeholderColor;
    self.placeholderLabel.textColor = _placeholderColor;
    [self setNeedsDisplay];
}

-(void)setPlaceholder:(NSString *)placeholder{
    _placeholder = placeholder;
    self.placeholderLabel.text = _placeholder;
    [self setNeedsLayout];
}

-(void)dealloc{
    [NoteCenter removeObserver:self];
}
@end


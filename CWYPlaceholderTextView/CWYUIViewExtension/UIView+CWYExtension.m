//
//  UIView+CWYExtension.m
//  CWYPlaceholderTextViewExample
//
//  Created by YaAsk.CHINA on 16/3/10.
//  Copyright © 2016年 YaAsk.CHINA. All rights reserved.
//  you can set UIView's size\width\height\x\y\centerX\centerY directly
//  also you can judge if UIView is showing on keyWindow otherwise not outof viewport

#import "UIView+CWYExtension.h"

@implementation UIView (CWYExtension)

-(void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(CGFloat)width{
    return self.frame.size.width;
}

-(void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

-(CGFloat)height{
    return self.frame.size.height;
}

-(void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(CGFloat)x{
    return self.frame.origin.x;
}

-(void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

-(CGFloat)y{
    return self.frame.origin.y;
}

-(void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

-(CGSize)size{
    return self.frame.size;
}

-(void)setCenterX:(CGFloat)centerX{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

-(CGFloat)centerX{
    return self.center.x;
}


-(void)setCenterY:(CGFloat)centerY{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

-(CGFloat)centerY{
    return self.center.y;
}

-(BOOL)isShowingOnKeyWindow{
    
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    //Convert the coordinates to the current visible window
    CGRect newFrame = [self.superview convertRect:self.frame toView:nil];
    CGRect winBounds = keyWindow.bounds;
    BOOL interSects = CGRectIntersectsRect(newFrame, winBounds);
    return self.isHidden == NO && self.alpha > 0.01 && interSects && self.window == keyWindow;
}
@end

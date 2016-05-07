//
//  UITextField+FEPlaceHolder.m
//  FECategory
//
//  Created by FlyElephant on 16/5/7.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "UITextField+FEPlaceHolder.h"
#import <objc/runtime.h>

static const void *leftPaddingKey= &leftPaddingKey;
static const void *rightPaddingKey= &rightPaddingKey;
static const void *placeHolderColorKey = &placeHolderColorKey;


@implementation UITextField (FEPlaceHolder)

-(CGFloat)leftPadding{
    return [objc_getAssociatedObject(self, leftPaddingKey) floatValue];
}

-(void)setLeftPadding:(CGFloat)leftPadding{
    CGRect frame = self.frame;
    frame.size.width =leftPadding;
    UIView *leftview = [[UIView alloc] initWithFrame:frame];
    self.leftViewMode = UITextFieldViewModeAlways;
    self.leftView = leftview;
    objc_setAssociatedObject(self,leftPaddingKey,[NSNumber numberWithFloat:leftPadding], OBJC_ASSOCIATION_ASSIGN);
}

-(CGFloat)rightPadding{
    return [objc_getAssociatedObject(self, rightPaddingKey) floatValue];
}

-(void)setRightPadding:(CGFloat)rightPadding{
    CGRect frame = self.frame;
    frame.size.width =rightPadding;
    UIView *leftview = [[UIView alloc] initWithFrame:frame];
    self.rightViewMode = UITextFieldViewModeAlways;
    self.rightView = leftview;
    objc_setAssociatedObject(self,rightPaddingKey,[NSNumber numberWithFloat:rightPadding], OBJC_ASSOCIATION_ASSIGN);
}

-(UIColor *)placeHolderColor{
    return objc_getAssociatedObject(self, placeHolderColorKey);
}

-(void)setPlaceHolderColor:(UIColor *)placeHolderColor{
    [self setValue:placeHolderColor forKeyPath:@"_placeholderLabel.textColor"];
    objc_setAssociatedObject(self,placeHolderColorKey, placeHolderColor, OBJC_ASSOCIATION_RETAIN);
}

@end

//
//  UITextField+FEPlaceHolder.h
//  FECategory
//
//  Created by FlyElephant on 16/5/7.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (FEPlaceHolder)

/**
 *  modify default placeholder padding
 */
@property (assign,nonatomic) CGFloat leftPadding;
/**
 *  modify default placeholder color
 */
@property (strong,nonatomic) UIColor *placeHolderColor;

@end

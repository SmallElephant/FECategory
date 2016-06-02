//
//  UISearchBar+FESearchBar.m
//  FECategory
//
//  Created by FlyElephant on 16/6/2.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "UISearchBar+FESearchBar.h"
#import <objc/runtime.h>

#define IS_IOS9 [[UIDevice currentDevice].systemVersion doubleValue] >= 9

static const void *cancelTitleKey= &cancelTitleKey;
static const void *textColorKey= &textColorKey;
static const void *textFontKey= &textFontKey;

@implementation UISearchBar (FESearchBar)

-(NSString *)cancelTitle{
     return [objc_getAssociatedObject(self, cancelTitleKey) string];
}

-(void)setCancelTitle:(NSString *)cancelTitle{
    if (IS_IOS9) {
        [[UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:@[[UISearchBar class]]] setTitle:cancelTitle];
    }else {
        [[UIBarButtonItem appearanceWhenContainedIn:[UISearchBar class], nil] setTitle:cancelTitle];
    }
     objc_setAssociatedObject(self,cancelTitleKey,cancelTitle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


-(UIFont *)textFont{
    return objc_getAssociatedObject(self, textFontKey);
}

-(void)setTextFont:(UIFont *)textFont{
    if (IS_IOS9) {
        [UITextField appearanceWhenContainedInInstancesOfClasses:@[[UISearchBar class]]].font = textFont;
    }else {
        [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setFont:textFont];
    }
    objc_setAssociatedObject(self,textFontKey,textFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(UIColor *)textColor{
    return objc_getAssociatedObject(self, textColorKey);
}

-(void)setTextColor:(UIColor *)textColor{
    if (IS_IOS9) {
        [UITextField appearanceWhenContainedInInstancesOfClasses:@[[UISearchBar class]]].textColor = textColor;
    }else {
        [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setTextColor:textColor];
    }
    objc_setAssociatedObject(self,textColorKey,textColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

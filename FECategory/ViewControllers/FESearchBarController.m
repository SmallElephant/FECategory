//
//  FESearchBarController.m
//  FECategory
//
//  Created by FlyElephant on 16/6/2.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "FESearchBarController.h"
#import "UISearchBar+FESearchBar.h"

@interface FESearchBarController ()

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property (weak, nonatomic) IBOutlet UISearchBar *nextSearchBar;


@end

@implementation FESearchBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

- (void)setup {
    //1.改变默认搜索文字
    self.searchBar.placeholder = @"FlyElephant";
    //2.默认取消文字及颜色
    self.searchBar.cancelTitle = @"中山郎";
    self.searchBar.tintColor   = [UIColor greenColor];
    //3.设置搜索框
    UITextField *searchField = [self.searchBar valueForKey:@"searchField"];
    if (searchField) {
        [searchField setBackgroundColor:[UIColor whiteColor]];
        searchField.layer.cornerRadius  = 13.0f;
        searchField.layer.borderColor   = [UIColor redColor].CGColor;
        searchField.layer.borderWidth   = 1;
        searchField.layer.masksToBounds = YES;
        //光标颜色
        [searchField setTintColor:[UIColor blueColor]];
    }
    
    //4.背景区域
    self.searchBar.backgroundImage = [[UIImage alloc] init];
    //5.隐藏取消按钮
    self.nextSearchBar.showsCancelButton=NO;
    
    //6.设置输入文本大小及颜色
    self.searchBar.textColor=[UIColor redColor];
    self.searchBar.textFont=[UIFont systemFontOfSize:14];
    
    //7.设置迷你搜索框
    self.nextSearchBar.searchBarStyle=UISearchBarStyleMinimal;
}

@end

//
//  DXDTabBarController.m
//  AppUIFrame1
//
//  Created by ilmeeself on 15/10/21.
//  Copyright © 2015年 ilmeeself. All rights reserved.
//

#import "DXDTabBarController.h"
#import "DXDOneViewController.h"
#import "DXDTwoViewController.h"
#import "DXDThreeViewController.h"

@interface DXDTabBarController ()

@end

@implementation DXDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpAllChildViewController{    // 1.添加第一个控制器
    DXDOneViewController *oneVC = [[DXDOneViewController alloc]init];
    [self setUpOneChildViewController:oneVC image:[UIImage imageNamed:@"fa-home"] title:@"首页"];    // 2.添加第2个控制器
    DXDTwoViewController *twoVC = [[DXDTwoViewController alloc]init];
    [self setUpOneChildViewController:twoVC image:[UIImage imageNamed:@"fa-star"] title:@"发现"];    // 3.添加第3个控制器
    DXDThreeViewController *threeVC = [[DXDThreeViewController alloc]init];
    [self setUpOneChildViewController:threeVC image:[UIImage imageNamed:@"fa-child"] title:@"我的"];
    
}

- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image title:(NSString *)title{
    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:viewController];
    navC.title = title;
    navC.tabBarItem.image = image;
    [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"a"] forBarMetrics:UIBarMetricsDefault];
    
    viewController.navigationItem.title = title;
    
    [self addChildViewController:navC];
}

@end

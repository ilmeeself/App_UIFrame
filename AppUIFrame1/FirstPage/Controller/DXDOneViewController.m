//
//  DXDOneViewController.m
//  AppUIFrame1
//
//  Created by ilmeeself on 15/10/21.
//  Copyright © 2015年 ilmeeself. All rights reserved.
//

#import "DXDOneViewController.h"

@interface DXDOneViewController ()

@end

@implementation DXDOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(10, 60, 150, 30)];
    lbl.text = @"这是第一页的内容";
    [self.view addSubview:lbl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

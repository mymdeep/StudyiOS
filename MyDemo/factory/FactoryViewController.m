//
//  FactoryViewController.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/25.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "FactoryViewController.h"
#import "Log.h"
@interface FactoryViewController ()

@end

@implementation FactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [Log mulMessage:@"entrance",@"   ", nil];
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 64)];
    label.text = @"Factory";
    [self.view addSubview:label];
    // Do any additional setup after loading the view.
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

//
//  FactoryViewController.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/25.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "FactoryViewController.h"
#import "Log.h"
#import "EasyFactory.h"
#import "PhoneModel.h"
#import "IPhoneFactory.h"
#import "AbstractFactory.h"
@interface FactoryViewController ()

@end

@implementation FactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     // Do any additional setup after loading the view.
   UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
     button1.frame = CGRectMake(100, 100, 170, 60);
    [button1 setBackgroundColor:[UIColor redColor]];
   [button1 setTitle:@"简单工厂模式" forState:UIControlStateNormal];
     [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(click1:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(100, 200, 170, 60);
    [button2 setBackgroundColor:[UIColor redColor]];
    [button2 setTitle:@"工厂模式" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    [button2 addTarget:self action:@selector(click2:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(100, 300, 170, 60);
    [button3 setBackgroundColor:[UIColor redColor]];
    [button3 setTitle:@"抽象工厂模式" forState:UIControlStateNormal];
    [self.view addSubview:button3];
    [button3 addTarget:self action:@selector(click3:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)click1:(UIButton *) button{
    PhoneModel* p = [EasyFactory getPhone:HUAWEIMate9];
    [Log withTag:@"factory" message:p.name];
}
    -(void)click2:(UIButton *) button{
        AFactory* f = [[IPhoneFactory alloc]init];
        PhoneModel* p = [f getPhone:iPhone8];
        [Log withTag:@"factory" message:p.name];
    }
    -(void)click3:(UIButton *) button{
        AFactory* f = [AbstractFactory factoryWithType:Apple];
        PhoneModel* p = [f getPhone:iPhone8];
        [Log withTag:@"factory" message:p.name];
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

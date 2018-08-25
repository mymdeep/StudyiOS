//
//  ViewController.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/23.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "ViewController.h"
#import "Constant.h"
#import "HomeTableViewDataSource.h"
#import "Log.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64) style:UITableViewStylePlain];

    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Description" ofType:@"plist"];
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    NSMutableArray* names  = [[NSMutableArray alloc]initWithCapacity:dictionary.count];
    NSMutableArray* details  = [[NSMutableArray alloc]initWithCapacity:dictionary.count];
    
    for (NSString *key in dictionary) {
        [Log mulMessage:@"key = ",key,@"  value = ",dictionary[key], nil];
        [names addObject:key];
        [details addObject:dictionary[key]];
    }
    _h = [[HomeTableViewDataSource alloc] initWithNames:names andDes:details];
    [_h setController:self];
    self.tableView.dataSource = _h;
    self.tableView.delegate = _h;
    [self.view addSubview:self.tableView];
    [self.tableView reloadData];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

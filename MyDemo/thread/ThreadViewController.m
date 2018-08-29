//
//  ThreadViewController.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/28.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "ThreadViewController.h"
#import "Log.h"
@interface ThreadViewController ()

@end

@implementation ThreadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(100, 100, 170, 60);
    [button1 setBackgroundColor:[UIColor redColor]];
    [button1 setTitle:@"NSThread alloc" forState:UIControlStateNormal];
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(click1:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(100, 200, 170, 60);
    [button2 setBackgroundColor:[UIColor redColor]];
    [button2 setTitle:@"NSThread detachNewThreadWithBlock" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    [button2 addTarget:self action:@selector(click2:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(100, 300, 170, 60);
    [button3 setBackgroundColor:[UIColor redColor]];
    [button3 setTitle:@"performSelector" forState:UIControlStateNormal];
    [self.view addSubview:button3];
    [button3 addTarget:self action:@selector(click3:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake(100, 400, 170, 60);
    [button4 setBackgroundColor:[UIColor redColor]];
    [button4 setTitle:@"NSOperationQueue" forState:UIControlStateNormal];
    [self.view addSubview:button4];
    [button4 addTarget:self action:@selector(click4:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake(100, 500, 170, 60);
    [button5 setBackgroundColor:[UIColor redColor]];
    [button5 setTitle:@"NSOperationQueue" forState:UIControlStateNormal];
    [self.view addSubview:button5];
    [button5 addTarget:self action:@selector(click5:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeCustom];
    button6.frame = CGRectMake(100, 600, 170, 60);
    [button6 setBackgroundColor:[UIColor redColor]];
    [button6 setTitle:@"NSOperationQueue" forState:UIControlStateNormal];
    [self.view addSubview:button6];
    [button6 addTarget:self action:@selector(click6:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)click1:(UIButton *) button{
    NSThread *thread = [[NSThread alloc]initWithBlock:^{
        [Log withTag:@"thread" message:@"线程1"];
    }];
    [thread start];
    [Log withTag:@"thread" message:@"主线程1"];
}
-(void)click2:(UIButton *) button{
    [NSThread detachNewThreadWithBlock:^{
        [Log withTag:@"thread" message:@"线程2"];
    }];
     [Log withTag:@"thread" message:@"主线程2"];
}
-(void)click3:(UIButton *) button{
    [self performSelector:@selector(doLog) withObject:self afterDelay:2];
    [Log withTag:@"thread" message:@"主线程3"];
}
-(void)click4:(UIButton *) button{
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    [queue addOperationWithBlock:^{
         [Log withTag:@"thread" message:@"线程4"];
    }];
     [Log withTag:@"thread" message:@"主线程4"];
}
-(void)click5:(UIButton *) button{
    NSOperationQueue *operaQueue = [[NSOperationQueue alloc]init];
    NSInvocationOperation *op = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(doLog1) object:nil];
    [operaQueue addOperation:op];
      [Log withTag:@"thread" message:@"主线程5"];
}
-(void)click6:(UIButton *) button{
    dispatch_queue_t queue2 = dispatch_queue_create("queue", NULL);
    dispatch_async(queue2, ^{
        [Log withTag:@"thread" message:@"线程6"];
    });
     [Log withTag:@"thread" message:@"主线程6"];
}
- (void)doLog{
     [Log withTag:@"thread" message:@"线程3"];
}
- (void)doLog1{
    [Log withTag:@"thread" message:@"线程5"];
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

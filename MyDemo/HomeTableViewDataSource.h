//
//  HomeTableViewDataSource.h
//  MyDemo
//
//  Created by 王飞 on 2018/8/25.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HomeTableViewDataSource : NSObject<
UITableViewDataSource,
UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *arrayName;
@property (nonatomic, strong) NSMutableArray *arrayDetail;
@property (nonatomic, strong) UIViewController *controller;
-(id) initWithNames : (NSMutableArray*) names andDes:(NSMutableArray*) details ;

//-(void)jumpTo:(UIViewController*) view;
@end


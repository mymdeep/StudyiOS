//
//  AbstractFactory.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/27.
//  Copyright © 2018年 王飞. All rights reserved.
//抽象工厂，先选工厂再选商品

#import "AbstractFactory.h"
#import "IPhoneFactory.h"
#import "HuaWeiFactory.h"
@implementation AbstractFactory
+ (id)factoryWithType:(FactoryType)type{
    if(type == Apple){
        return [[IPhoneFactory alloc] init];
    }else{
         return [[HuaWeiFactory alloc] init];
    }
}

@end

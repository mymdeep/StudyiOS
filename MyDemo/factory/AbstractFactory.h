//
//  AbstractFactory.h
//  MyDemo
//
//  Created by 王飞 on 2018/8/27.
//  Copyright © 2018年 王飞. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "PhoneModel.h"
#import "PhoneType.h"

@interface AbstractFactory : NSObject
    
typedef NS_ENUM(NSInteger, FactoryType){
        Apple,
        Huawei,
};
+ (id)factoryWithType:(FactoryType)type;

@end

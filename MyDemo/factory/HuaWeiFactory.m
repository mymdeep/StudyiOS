//
//  HuaWeiFactory.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/27.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "HuaWeiFactory.h"

@implementation HuaWeiFactory
- (PhoneModel *)getPhone:(PhoneType )type{
    PhoneModel* p;
    switch (type) {
       
        case HUAWEIP20:
        p =[[Phone20 alloc]init];
        break;
        case HUAWEIMate9:
        p =[[Phone9 alloc]init];
        break;
        default:
        p = nil;
        break;
    }
    if(p){
        [p make];
    }
    return p;
}
@end

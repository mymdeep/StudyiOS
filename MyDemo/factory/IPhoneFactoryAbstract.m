//
//  IPhoneFactory.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/27.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "IPhoneFactory.h"

@implementation IPhoneFactory
- (PhoneModel *)getPhone:(PhoneType )type{
    PhoneModel* p;
    switch (type) {
        case iPhone8:
        p =[[Phone8 alloc]init];
        break;
        case iPhoneX:
        p =[[PhoneX alloc]init];
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

//
//  EasyFactory.h
//  MyDemo
//
//  Created by 王飞 on 2018/8/27.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneType.h"
#import "PhoneModel.h"
#import "Phone8.h"
#import "Phone9.h"
#import "PhoneX.h"
#import "Phone20.h"
@interface EasyFactory : NSObject
+ (PhoneModel *)getPhone:(PhoneType )type;
@end

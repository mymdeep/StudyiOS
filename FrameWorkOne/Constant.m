//
//  Constant.m
//  FrameWorkOne
//
//  Created by 王飞 on 2018/8/23.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "Constant.h"
#import "CComon.h"
@implementation Constant
+ (NSString *) getValue:(NSString*)key{
    NSString* string =[[CComon getValue:@"one"] stringByAppendingString:key];
    return string;
}

@end

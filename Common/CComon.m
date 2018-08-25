//
//  CComon.m
//  FrameWorkOne
//
//  Created by 王飞 on 2018/8/23.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "CComon.h"

@implementation CComon
+ (NSString *) getValue:(NSString*)key{
    NSString* string =[@"this is " stringByAppendingString:key];
    return string;
}
@end

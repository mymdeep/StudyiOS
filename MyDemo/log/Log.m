//
//  Log.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/25.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "Log.h"

@implementation Log
+(void) mulMessage:(NSString*) message, ...NS_REQUIRES_NIL_TERMINATION{
    NSString* r = @"";
    if(message){
        r = [r stringByAppendingString:message];
        va_list args;
        NSString *arg;
        va_start(args, message);
        while ((arg = va_arg(args, NSString *))) {
            r = [r stringByAppendingString:arg];
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    NSLog(@"[TAG]---%@",r);
}
+(void) withTag:(NSString*) tag mulMessage:(NSString*) message, ...NS_REQUIRES_NIL_TERMINATION{
    NSString* r = @"";
    if(message){
        r = [r stringByAppendingString:message];
        va_list args;
        NSString *arg;
        va_start(args, message);
        while ((arg = va_arg(args, NSString *))) {
            r = [r stringByAppendingString:arg];
        }
        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }
    NSLog(@"[%@]---%@",tag,r);
}
+(void) message:(NSString *) message{
   NSLog(@"[Tag]---%@",message);
}
+(void) withTag:(NSString*) tag message:(NSString *)message{
     NSLog(@"[%@]---%@",tag,message);
}
@end

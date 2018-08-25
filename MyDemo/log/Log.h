//
//  Log.h
//  MyDemo
//
//  Created by 王飞 on 2018/8/25.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Log : NSObject
+(void) mulMessage:(NSString*) message, ...NS_REQUIRES_NIL_TERMINATION;
+(void) withTag:(NSString*) tag mulMessage:(NSString*) message, ...NS_REQUIRES_NIL_TERMINATION ;
+(void) message:(NSString *)message;
+(void) withTag:(NSString*) tag message:(NSString *)message;
@end

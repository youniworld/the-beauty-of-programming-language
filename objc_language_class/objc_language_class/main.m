//
//  main.m
//  objc_language_class
//
//  Created by youni on 15/3/28.
//  Copyright (c) 2015年 youni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "objc_language_class.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        YN_Example_Delegate* delegate = [[YN_Example_Delegate alloc] init];
        delegate.myprop = 8;
        
        NSLog([NSString stringWithFormat:@"%d",delegate.myprop]);
        
        //delegate = [[YN_Example_DelegateDerived alloc] init];
        
        BOOL isClass = [delegate isKindOfClass:[YN_Example_DelegateDerived class]];
        
        isClass?NSLog(@"is YN_Example_DelegateDerived"):NSLog(@"is not YN_Example_DelegateDerived");
        
        NSLog([delegate getMe]);
    }
    return 0;
}
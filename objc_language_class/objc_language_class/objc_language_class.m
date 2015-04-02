//
//  objc_language_class.m
//  objc_language_class
//
//  Created by youni on 15/3/28.
//  Copyright (c) 2015年 youni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "objc_language_class.h"
static NSString* gStr;

@implementation YN_Example_Delegate

- (NSString*) getMe{
    return @"YN_Example_Delegate";
}

-(YN_Example_Delegate*) init{
    myStr = [[NSString alloc] initWithUTF8String:""];
    return self;
}

@end

@implementation YN_Example_DelegateDerived
- (NSString*) getMe{
    myStr = @"";
    return @"YN_Example_DelegateDerived";
}
@end

@implementation YN_Example_Class

-(YN_Example_Class*) init{
    mExampleStr = @"YN_Example_Class";
    mExampleData = 8;
    mExampleBool = YES;
    return self;
}

-(void) exampleFunc{
    NSLog(@"exampleFunc");
}

-(void) exampleFuncWithParameters:(NSString *)str withBool:(BOOL) boolP{
    mExampleStr = str;
    mExampleBool = boolP;
}

-(NSString*) exampleFuncWithReturnValue{
    return mExampleStr;
}

+(void) classExampleFunc{
    NSLog(@"classExampleFunc");
    gStr =@"test";
}

-(void) setExampleProperty: (int) data{
    if(_exampleProperty < 100){
        _exampleProperty = data;
    }
}

-(int) getExampleProperty{
    _exampleProperty++;
    return _exampleProperty;
}

@end
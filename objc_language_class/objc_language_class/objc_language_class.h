//
//  objc_language_class.h
//  objc_language_class
//
//  Created by youni on 15/3/28.
//  Copyright (c) 2015年 youni. All rights reserved.
//

#ifndef objc_language_class_objc_language_class_h
#define objc_language_class_objc_language_class_h

@protocol YN_Example_Protocol <NSObject>

-(NSString*) getMe;
@end

@interface YN_Example_Delegate : NSObject<YN_Example_Protocol>{
    NSString* myStr;
}

@property int myprop;

-(YN_Example_Delegate*) init;

@end

@interface YN_Example_DelegateDerived : YN_Example_Delegate;

@end

@interface YN_Example_Class : NSObject{
    @private
    int mExampleData;
    
    @protected
    NSString* mExampleStr;
    
    @public
    BOOL mExampleBool;
}

-(YN_Example_Class*) init;

@property(nonatomic) int exampleProperty;

-(void) exampleFunc;
-(void) exampleFuncWithParameters:(NSString*) str withBool:(BOOL) boolP;
-(NSString*) exampleFuncWithReturnValue;

+(void) classExampleFunc;

@end
#endif

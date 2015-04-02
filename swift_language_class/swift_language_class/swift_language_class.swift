//
//  swift_language_class.swift
//  swift_language_class
//
//  Created by youni on 15/3/29.
//  Copyright (c) 2015年 youni. All rights reserved.
//

import Foundation

private var gStr:String?

protocol YNExample_Protocol{
    func getMe() -> String
}

class YN_Example_Delegte : YNExample_Protocol{
    var myprop:UInt
    var myStr:String
    init(){
        myprop = 3;
        myStr = String()
    }
    
    func getMe() -> String{
        return "YN_Example_Delegte"
    }
}

class YN_Example_Delegte_derived :  YN_Example_Delegte{
    // without override, complier will give the error
    var derivedData:String
    override func getMe() -> String{
        return "YN_Example_Delegte_derived"
    }
    
    init(name:String){
        derivedData = "";
        //super.init()
    }
}

class YN_Example_class{
    var mExampleStr:String
    var mExampleData:UInt
    var mExampleBool:Bool
    
    var exampleProperty:UInt{
        get{
            mExampleData++
            return mExampleData;
        }
        
        set(data){
            if(mExampleData < 100){
                mExampleData = data
            }
        }
    }
    
    class var gProperty:String {
        set(g){
            gStr = g
        }
        get{
            return gStr!
        }
    }
    
    init(){
        mExampleStr = "YN_Example_class"
        mExampleData = 8
        mExampleBool = true
    }
    
    func exampleFunc(){
        println("exampleFunc")
    }
    
    func exampleFuncWithParameters(str:String, boolP:Bool){
        mExampleStr = str;
        mExampleBool = boolP
    }
    
    func exampleFuncWithReturnValue() -> String{
        return mExampleStr
    }
    
    class func  exampleClassFunc(){
        println("exampleClassFunc")
        gStr = "tttt"
        
        println(gStr!)
    }
}
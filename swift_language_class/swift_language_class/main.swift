//
//  main.swift
//  swift_language_class
//
//  Created by youni on 15/3/29.
//  Copyright (c) 2015年 youni. All rights reserved.
//

import Foundation

func show_class_runtime( base:YNExample_Protocol){
    println(base.getMe())
}

println("Hello, World!")

var delegate:YNExample_Protocol = YN_Example_Delegte()
var derived:YNExample_Protocol =  YN_Example_Delegte_derived(name:"")

show_class_runtime(delegate)

show_class_runtime(derived)

println((delegate as YN_Example_Delegte).myprop)

YN_Example_class.exampleClassFunc()

var example:YN_Example_class = YN_Example_class()
example.exampleProperty = 9;
println(example.exampleProperty)

YN_Example_class.gProperty = "test global property"

println(YN_Example_class.gProperty)


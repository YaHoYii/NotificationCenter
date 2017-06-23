//
//  Person.swift
//  ObserverDemo
//
//  Created by 太阳在线YHY on 2017/6/23.
//  Copyright © 2017年 太阳在线. All rights reserved.
//

import UIKit

class Person: NSObject {
	// 想用 Swift 来实现 KVO，我们还需要做额外的工作，那就是将想要观测的对象标记为dynamic。。
	var name = "青"
	dynamic var age = 18
	var sex = "女"
	var height = 170

	override init() {
		super.init()
	}
	
	
	
}

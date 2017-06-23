//
//  ViewController.swift
//  ObserverDemo
//
//  Created by 太阳在线YHY on 2017/6/23.
//  Copyright © 2017年 太阳在线. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var textView: UITextView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		NotificationCenter.default.addObserver(self, selector: #selector(changeTextView), name: NSNotification.Name.UITextViewTextDidChange, object: nil)
		
	}
	
	
	func changeTextView() {
		
		print("textView 改变")
		
	}

	override func viewWillDisappear(_ animated: Bool) {
		
		NotificationCenter.default.removeObserver(self)
	
	}
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


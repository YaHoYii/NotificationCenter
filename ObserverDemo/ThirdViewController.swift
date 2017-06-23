//
//  ThirdViewController.swift
//  ObserverDemo
//
//  Created by 太阳在线YHY on 2017/6/23.
//  Copyright © 2017年 太阳在线. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

	var person = Person()
	
    override func viewDidLoad() {
        super.viewDidLoad()

		person.addObserver(self, forKeyPath: "age", options: .new, context: nil)

    }
	
	@IBAction func click(_ sender: UIButton) {
		
		person.age = 20
		
	}
	
	override func willChangeValue(forKey key: String) {
		
	}
	
	
	override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
		print("123")
		print(change![NSKeyValueChangeKey.newKey]!)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		person.removeObserver(self, forKeyPath: "age")
		NotificationCenter.default.post(name: NSNotification.Name(rawValue:"me"), object: self, userInfo: ["y" : "YaHoYi"])

	
	}
	
	

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

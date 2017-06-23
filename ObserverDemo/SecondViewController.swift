//
//  SecondViewController.swift
//  ObserverDemo
//
//  Created by 太阳在线YHY on 2017/6/23.
//  Copyright © 2017年 太阳在线. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		NotificationCenter.default.addObserver(self, selector: #selector(me), name: NSNotification.Name(rawValue:"me"), object: nil)
		
        // Do any additional setup after loading the view.
    }
	
	
	func me(noti: Notification) {
		
        let titles = noti.userInfo
		self.navigationItem.title = titles?["y"] as? String
	}


	@IBAction func click(_ sender: UIButton) {
		
		NotificationCenter.default.post(name: NSNotification.Name(rawValue:"me"), object: self, userInfo: ["y" : "杨泓毅"])
		
		
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

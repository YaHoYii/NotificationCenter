//
//  FirstViewController.swift
//  ObserverDemo
//
//  Created by 太阳在线YHY on 2017/6/23.
//  Copyright © 2017年 太阳在线. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

	@IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

		
		
		NotificationCenter.default.addObserver(self, selector: #selector(change), name: NSNotification.Name(rawValue: "shake"), object: nil)
		
		
		
		
    }
	@IBAction func click(_ sender: UIButton) {
		
		NotificationCenter.default.post(name: NSNotification.Name(rawValue: "shake"), object: self)
		
	}
	
	func change() {
		
		print("wocao")
		
	}
	
	
	override func viewWillDisappear(_ animated: Bool) {
			NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue:"shake"), object: nil)
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

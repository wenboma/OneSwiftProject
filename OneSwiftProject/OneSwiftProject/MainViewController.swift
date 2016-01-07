//
//  MainViewController.swift
//  OneSwiftProject
//
//  Created by 马文铂 on 16/1/6.
//  Copyright © 2016年 UK. All rights reserved.
//

import UIKit

import ReactiveCocoa

class MainViewController: UIViewController {

    @IBAction func pushButton(sender: UIButton) {
        
        self.navigationController?.pushViewController(UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ViewController"), animated: false)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

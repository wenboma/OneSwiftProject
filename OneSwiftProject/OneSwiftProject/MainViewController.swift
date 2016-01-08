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
        
//        self.signal()
    
        self.buffer()
        
    
    }
    func signal () {
        let (signal, sink) = Signal<String, NoError>.pipe()
        
        
        signal.observeNext { (value) -> () in
            print(value)
        }
        
        sink.sendNext("131")
        
        sink.sendNext("456")
        
        sink.sendNext("789")

    }
  
    func buffer () {
        
        let (single, pipe) = Signal<String, NoError>.pipe()
        let (producer , sink) = SignalProducer<String, NoError>.buffer()
        
        single.observe(sink)
        sink.sendNext("11")
        producer.startWithNext { (value) -> () in
            print(value)
        }
    }
    
}

//
//  MainViewController.swift
//  OneSwiftProject
//
//  Created by 马文铂 on 16/1/6.
//  Copyright © 2016年 UK. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func pushButton(sender: UIButton) {
        
        self.navigationController?.pushViewController(UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ViewController"), animated: false)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

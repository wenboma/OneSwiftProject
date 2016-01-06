//
//  FaceView.swift
//  OneSwiftProject
//
//  Created by 马文铂 on 16/1/6.
//  Copyright © 2016年 UK. All rights reserved.
//

import UIKit

@IBDesignable class FaceView: UIView {
    var view = UIView(frame: CGRectMake(100,100 ,200,100))
    @IBInspectable var radius :CGFloat = 0.2 {
        didSet {
            self.view.layer.cornerRadius = radius
            self.view.layer.masksToBounds = true
        }
    }
    @IBInspectable var color : UIColor = UIColor.redColor(){
        didSet {
            self.view.backgroundColor = color
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        color = UIColor.blueColor()

        self.addSubview(self.view)
        self.radius = 0.3

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

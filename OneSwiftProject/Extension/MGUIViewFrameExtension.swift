//
//  MGUIViewFrameExtension.swift
//  SwiftExtension
//
//  Created by cp3 on 16/1/6.
//  Copyright © 2016年 PM. All rights reserved.
//

import UIKit

extension UIView {
    var left : CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }
    
    var top : CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }
    
    var right : CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
        get {
            return self.frame.origin.x + self.frame.size.width
        }
    }
    
    var bottom : CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
        get {
            return self.frame.origin.y + self.frame.size.height
        }
    }
    
    var centerX : CGFloat {
        set {
            self.center = CGPointMake(newValue, self.center.y)
        }
        get {
            return self.center.x
        }
    }
    
    var centerY : CGFloat {
        set {
            self.center = CGPointMake(self.center.x, newValue)
        }
        get {

            return self.center.y
        }
    }
    var width :CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        get{
            return self.frame.size.width
        }
    }
    var height :CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        get{
            return self.frame.size.height
        }
    }
    
    var origin : CGPoint {
        set {
            var frame : CGRect = self.frame
            frame.origin = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin
        }
    }
    
    var size : CGSize {
        set {
            var frame : CGRect = self.frame
            frame.size = newValue
            self.frame = frame
        }
        get {
            return self.frame.size
        }
    }
}

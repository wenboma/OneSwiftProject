//
//  GBRAC+Extension.swift
//  OneSwiftProject
//
//  Created by 马文铂 on 16/1/5.
//  Copyright © 2016年 UK. All rights reserved.
//

import UIKit
import ReactiveCocoa

struct RAC  {
    var target : NSObject!
    
    var keyPath : String!
    
    var nilValue : AnyObject!
    
    init(_ target: NSObject!, _ keyPath: String, nilValue: AnyObject? = nil) {
        
        self.target = target
        
        self.keyPath = keyPath
        
        self.nilValue = nilValue
        
    }
    
    func assignSignal(signal : RACSignal) {
        
        signal.setKeyPath(self.keyPath, onObject: self.target, nilValue: self.nilValue)

    }
    
}

infix operator <~ {}

func <~ (rac: RAC ,single : RACSignal){
    rac.assignSignal(single)
}

infix operator ~> {}

func ~> (signal: RACSignal, rac: RAC) {
    
    rac.assignSignal(signal)
    
}
func RACObserve(target: NSObject!, keyPath: NSString) -> RACSignal  {
    
    return target.rac_valuesForKeyPath(keyPath as String, observer: target)
    
}

extension NSObject {
    
    
}

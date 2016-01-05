//
//  ViewController.swift
//  OneSwiftProject
//
//  Created by 马文铂 on 15/12/23.
//  Copyright © 2015年 UK. All rights reserved.
//

import UIKit
import ReactiveCocoa

@objc class ViewController: UIViewController {

    let userNameTextField = UITextField()
    let passWordTextField = UITextField()
    let loginButton = UIButton(type: UIButtonType.Custom)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.reactiveCocoaFunc()
        
        return
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        NSLog("%@\n %@", appleSummary,fruitSummary)
        
        let emptyArray = [String]()
        let emptyDictionary = Dictionary<String, Float>()
        NSLog("%@ %@", emptyArray,emptyDictionary)
        
        
        let possibleNumber:String = "Hello"
        let convertedNumber :Int? = Int(possibleNumber);
        print(convertedNumber);
        
        
        if (convertedNumber != nil) {
            print("\(possibleNumber) has an integer value of \(convertedNumber! )")
        } else {
            print("\(possibleNumber) could not be converted to an integer")
        }
        

        let assumedString: String!  = "An implicitly unwrapped optional string."
        if (assumedString != nil) {
            print(assumedString)
        }
        
        let (x,y) = (1,2);
        print(x,y)
        
        var countrys = ["USA","India","china","japan","france","german","austerlia"];
        countrys[4...6] = ["acs"]
        print(countrys)
        
        
        for  (index, value) in countrys.enumerate() {
            print("Item \(index + 1): \(value)")
        }
        
        var a = 34, b = 43;
        swapTwoInts( &a, b: &b );
        print(a,b)
        

        
        
        
        var array = [20,80,100,50,20]
        
        //使用闭包判断是否在数组中有大于500的元素
        
//        var v1=copare(array,value: 5,cb: {(num:Int,value:Int)->Bool in
//            
//            return num>value
//            
//        })
        var v1=copare(array,value:500) {(num:Int,value:Int)->Bool in
            
            return num>value
            
        }
        
        

        
        //判断结果并输出·
        
        if  v1==true {
            
            print("数组array中有比500大的元素")
            
        }else{
            
            print("数组array中没有比500大的元素")
            
        }
        
        //使用闭包判断是否在数组中有大于40的元素
        
        var v2=copare(array,value: 40,cb: {(num:Int,value:Int)->Bool in
            
            return num>value
            
        })
        
        //判断结果并输出
        
        if  v2==true {
            
            print("数组array中有比40大的元素")
            
        }else{
            
            print("数组array中没有比40大的元素")
            
        }
        
        
        
        let digitNames = [
            
            0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
            
        ]
        
        //创建数组
        
        let numbers = [521,52,1,13,14]
        
        //以下是使用trailing闭包进行的函数调用，实现将数字转为英文
        
        let strings = numbers.map {
            
            (var number) -> String in
            
            var output = ""
            
            while number > 0 {
                
                output = digitNames[number % 10]! + output
                
                number /= 10
                
            }
            
            return output
            
        }
        
        //遍历并输出
        
        for index in strings{
            
            print(index)
            
        }
        print(strings)
        
        
        
        
        var a1 = makeIncrementor(forIncrement: 10)
        
        //输出
        
        print("输出a的增量")
        
        print(a1())
        
        print(a1())
        
        print(a1())
        
        var b1 = makeIncrementor(forIncrement: 5)
        
        //赋值，输出
        
        print("输出b的增量")
        
        print(b1())
        
        print(b1())
        
        print(b1())
    
    }
    
    func makeIncrementor(forIncrement amount: Int) -> () -> Int {
        
        var runningTotal = 0
        
        //定义函数incrementor()，实现runningTotal的增加
        
        func incrementor() -> Int {
            
            runningTotal += amount
            
            return runningTotal
            
        }
        
        return incrementor
        
    }

    func swapTwoInts(inout a: Int, inout b: Int) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    func copare(arr:[Int],value:Int,cb:(Num:Int,Value:Int)->Bool)->Bool{
        
        //遍历数组
        
        for item in arr{
            
            //判断闭是否为真
            
            if(cb(Num: item,Value: value)){
                
                return true
                
            }
            
        }
        
        return false
        
    }

   
    
    func reactiveCocoaFunc() {
        let label = UILabel(frame: CGRectMake(50,100,40,30))
        label.text = "账号"
        self.view.addSubview(label)
        

        self.userNameTextField.frame = CGRectMake(label.frame.size.width+label.frame.origin.x, label.frame.origin.y, 200, 30)
        self.userNameTextField.borderStyle = UITextBorderStyle.Line
        self.view.addSubview(self.userNameTextField)
        
        let label1 = UILabel(frame: CGRectMake(50,150,40,30))
        label1.text = "密码"
        self.view.addSubview(label1)
        
        
        self.passWordTextField.frame = CGRectMake(label1.frame.size.width+label1.frame.origin.x, label1.frame.origin.y, 200, 30)
        self.passWordTextField.borderStyle = UITextBorderStyle.Line
        self.view.addSubview(self.passWordTextField)

        self.loginButton.frame = CGRectMake(self.view.frame.width-100, self.passWordTextField.frame.origin.y + self.passWordTextField.frame.size.height+20, 50, 40)
        self.loginButton.setTitle("登录", forState: UIControlState.Normal)
        self.loginButton.backgroundColor = UIColor.blueColor()
        self.view.addSubview(self.loginButton)
        
        self.racSet()
    }
    
    
    func racSet () {

//        self.userNameTextField.rac_textSignal().filter { (text ) -> Bool in
//
//            let text1 = text as! String
//            
//            return text1.characters.count > 3
//            
//        }.subscribeNext { (text) -> Void in
//            print(text)
//        }
        
//        self.userNameTextField.rac_textSignal().map { (obj : AnyObject!) -> AnyObject! in
//            
//            let text : NSString = obj as! NSString
//            return text.length
//            }.filter { (obj) -> Bool in
//                let length : NSNumber = obj as! NSNumber
//                return length.intValue > 3
//        }.subscribeNext { (obj) -> Void in
//            print(obj.classForCoder)
//        }
        let validUsernameSignal : RACSignal = self.userNameTextField.rac_textSignal().map { (obj : AnyObject!) -> AnyObject! in
            let text: NSString = obj as! NSString
            return self.isValidUsername(text)
        }
        
        let validPasswordSignal: RACSignal = self.passWordTextField.rac_textSignal().map { (obj : AnyObject!) -> AnyObject! in
            let text :NSString = obj as! NSString
            return self.isValidPassword(text)
        }
        
        
//        RAC(self.userNameTextField,"backgroundColor") <~ validUsernameSignal.map({ (obj) -> AnyObject! in
//            let number: NSNumber = obj as! NSNumber
//            return number.boolValue == true ? UIColor.redColor() : UIColor.greenColor()
//        })
        
        self.loginButton.rac_signalForControlEvents(UIControlEvents.TouchUpInside).subscribeNext { (obj) -> Void in
            print("touch")
        }

        RACSignal.combineLatest([validPasswordSignal, validUsernameSignal]).map { (obj) -> AnyObject! in
            let tu = obj as! RACTuple
            if(tu.first.boolValue == true && tu.second.boolValue == true){
                return true
            }
            return false
        }.subscribeNext { (obj) -> Void in
            self.loginButton.enabled = obj.boolValue
        }
        
        
        let single = self.signInSignal()
        single.subscribeNext { (obj : AnyObject!) -> Void in
            print(obj)
        }
        
        
    }
    func isValidUsername(text:NSString) -> NSNumber{
        return NSNumber(bool: text.length > 3)
    }
    func isValidPassword(text: NSString) -> NSNumber{
        return NSNumber(bool: text.length > 3)
    }
    
    func signInSignal() -> RACSignal {
        return RACSignal.createSignal({ (subscriber:RACSubscriber!) -> RACDisposable! in
            let t : AnyObject = "123"
            subscriber.sendNext(t)
            return nil
        })
    }
    
    
}


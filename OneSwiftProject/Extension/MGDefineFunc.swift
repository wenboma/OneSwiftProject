//
//  MGDefineFunc.swift
//  SwiftExtension
//
//  Created by cp3 on 16/1/6.
//  Copyright © 2016年 PM. All rights reserved.
//

import UIKit

// 获取系统版本
func iOS_VERSION () -> Float {
    return Float(UIDevice.currentDevice().systemVersion)!
}

//localVersion
func APP_LOCAL_VERSION () -> String {
    return NSBundle.mainBundle().infoDictionary!["CFBundleVersion"] as! String
}

//shortversion
func APP_SHORT_VERSION () -> String {
    return NSBundle.mainBundle().infoDictionary!["CFBundleShortVersionString"] as! String
}

//HEXR color
func HEX_RGBA (rgbValeu : Int, alphaValue : CGFloat) -> UIColor {
    return UIColor(red:CGFloat((rgbValeu & 0xFF0000) >> 16)/255.0,
                    green: CGFloat((rgbValeu & 0x00FF00) >> 16)/255.0,
                    blue: CGFloat((rgbValeu & 0x0000FF) >> 16)/255.0, alpha: alphaValue)
}

//HEX color
func HEX_RGB (rgbValeu : Int) -> UIColor {
    return HEX_RGBA(rgbValeu, alphaValue: 1)
}

//角度转弧度
func DEGREES_TO_RADIANS (GLE:Double) -> Double {
    return GLE/180.0 * M_1_PI
}

//弧度转角度 
func RADIANS_TO_DEGREES (DEGREE: Double) -> Double {
    return DEGREE * M_1_PI / 180.0
}

//CGRectMake 
func ViewRect (x: CGFloat ,y : CGFloat, width : CGFloat, height : CGFloat) -> CGRect {
    return CGRectMake(x, y, width, height)
}

//状态栏高度
func STATUS_BAR_HEIGHT () -> CGFloat {
    return UIApplication.sharedApplication().statusBarFrame.height
}

//屏幕宽度
func SCREEN_WIDTH () -> CGFloat {
    return UIScreen.mainScreen().bounds.width
}

//屏幕高度
func SCREEN_HEIGHT () -> CGFloat {
    return UIScreen.mainScreen().bounds.height
}

//keyWindow
func KeyWindow () -> UIWindow {
    return ((UIApplication.sharedApplication().delegate?.window)!)!
}

//viewWithXib
func ViewWithXib (name : String , owner : AnyObject) -> UIView {
   return NSBundle.mainBundle().loadNibNamed(name, owner: owner, options: nil).first as! UIView
}

//RGB
func RGB (r: CGFloat ,g: CGFloat ,b : CGFloat) -> UIColor {
    return UIColor(red: CGFloat(r/255.0), green: CGFloat(g/255.0), blue: CGFloat(b/255.0), alpha: 1)
}

//RGBA 
func RGBA (r: CGFloat ,g: CGFloat ,b : CGFloat , a : CGFloat) -> UIColor {
    return UIColor(red: CGFloat(r/255.0), green: CGFloat(g/255.0), blue: CGFloat(b/255.0), alpha: a)
}






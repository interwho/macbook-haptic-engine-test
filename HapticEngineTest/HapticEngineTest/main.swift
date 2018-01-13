//
//  main.swift
//  HapticEngineTest
//
//  Created by Justin Paulin on 2016-06-08.
//  Copyright © 2016 Justin Paulin. All rights reserved.
//

import Foundation
import Cocoa

var mouseLoc = NSEvent.mouseLocation()
var xField = mouseLoc.x
var yField = mouseLoc.y

//var image : CGImage!
//image = CGDisplayCreateImageForRect(CGMainDisplayID(), CGRectMake(xField, yField, CGFloat(1), CGFloat(1)))
//var bitmap = NSBitmapImageRep.init(CGImage: image)
//var color = bitmap.colorAtX(0, y: 0)

while true {
    mouseLoc = NSEvent.mouseLocation()
    
    // Check if the mouse location has changed
    //if (mouseLoc.x != xField || mouseLoc.y != yField) {
        
        // Get the pixel at the tip of the mouse pointer
        //image = CGDisplayCreateImageForRect(CGMainDisplayID(), CGRectMake(mouseLoc.x, mouseLoc.y, CGFloat(1), CGFloat(1)))
        //bitmap = NSBitmapImageRep.init(CGImage: image)
        
        // Check if the color at the tip of the mouse pointer has changed
        //if (bitmap.colorAtX(0, y: 0) != color) {
            
            // Create haptic feedback
            NSHapticFeedbackManager.defaultPerformer().performFeedbackPattern(NSHapticFeedbackPattern.Generic, performanceTime: NSHapticFeedbackPerformanceTime.Now)
        //}
        
        // Update last background color
        //color = bitmap.colorAtX(0, y: 0)
        
        // Update last mouse location
        xField = mouseLoc.x
        yField = mouseLoc.y
        
        usleep(10000)
    //}
}
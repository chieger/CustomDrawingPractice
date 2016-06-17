//
//  PushButtonView.swift
//  topic_overview_2
//
//  Created by Charlie Hieger on 6/13/16.
//  Copyright © 2016 Charlie Hieger. All rights reserved.
//

import UIKit

@IBDesignable class PushButtonView: UIButton {

    @IBInspectable var fillColor: UIColor = UIColor.greenColor()
    @IBInspectable var isAddButton: Bool = true
    
    override func drawRect(rect: CGRect) {
            let path = UIBezierPath(ovalInRect: rect)
        fillColor.setFill()
        path.fill()
        
        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        let plusPath = UIBezierPath()
        plusPath.lineWidth = plusHeight
        
        plusPath.moveToPoint(CGPoint(x: bounds.width/2 - plusWidth/2, y: bounds.height/2 + 0.5))
        plusPath.addLineToPoint(CGPoint(x: bounds.width/2 + plusWidth/2, y:bounds.height/2 + 0.5))
        
        if isAddButton {
        plusPath.moveToPoint(CGPoint(x: bounds.height/2, y: bounds.height/2 - plusWidth/2))
        plusPath.addLineToPoint(CGPoint(x: bounds.height/2, y: bounds.width/2 + plusWidth/2 ))
        }
        
        UIColor.whiteColor().setStroke()
        plusPath.stroke()
    }
    

}

let NoOfGlasses = 8
let π: CGFloat = CGFloat(M_PI)

@IBDesignable class CounterView: UIView {
    
    @IBInspectable var counter: Int = 5
    @IBInspectable var outlineColor: UIColor = UIColor.blueColor()
    @IBInspectable var counterColor: UIColor = UIColor.orangeColor()
    
    override func drawRect(rect: CGRect) {
        let center = CGPoint(x: bounds.width/2, y: bounds.height/2 )
        let radius: CGFloat = max(bounds.width, bounds.height)
        let arcWidth: CGFloat = 76
        
        
        
        
        let startAngle: CGFloat = 3 * π / 4
        let endAngle: CGFloat = π / 4
        
        var path = UIBezierPath(arcCenter: center, radius: radius/2 - arcWidth/2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
    }
    
    
    
    
}

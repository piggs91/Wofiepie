//
//  MaterialButton.swift
//  WoofiePie
//
//  Created by Ravi Rathore on 4/25/16.
//  Copyright © 2016 com.banago. All rights reserved.
//

import UIKit
@IBDesignable
class MaterialButton: UIButton {

    //this init fires usually called, when storyboards UI objects created:
    
    //override var high
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
     self.setupViews()
    }
  
    
    
    //during developing IB fires this init to create object
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    
    }
    
    func setupViews() {
        //your common setup goes here
        self.layer.borderColor = UIColor.whiteColor().CGColor
        self.layer.borderWidth = 2.0
        self.layer.backgroundColor = UIColor.clearColor().CGColor
        self.tintColor = UIColor.whiteColor()
        self.layer.cornerRadius = self.layer.bounds.height / 2
        self.layer.masksToBounds = true
       // self.reversesTitleShadowWhenHighlighted = true
        self.setBackgroundImage(imageWithColor(UIColor.greenColor()), forState: .Highlighted)
    }
    
    //required method to present changes in IB
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupViews()
       // self.highlighted
    }
    
    
  
    func imageWithColor(color: UIColor) -> UIImage{
        let rect = self.bounds
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    //MARK:- handle touches
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
       // self.layer.backgroundColor = UIColor.greenColor().CGColor
            }

}

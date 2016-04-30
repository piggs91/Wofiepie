//
//  customBarButton.swift
//  WoofiePie
//
//  Created by Ravi Rathore on 4/29/16.
//  Copyright © 2016 com.banago. All rights reserved.
//

import UIKit


@IBDesignable class CustomBarButtonItem : UIBarButtonItem{
    @IBInspectable  var backgroundImage: UIImage?{
        didSet{
            setUpButton()
        }
    }
    
    private var customButton = UIButton(frame: CGRectMake(0,0,35,35))
    override init() {
        super.init()
        setUpButton()
    }
    convenience init(withImage:UIImage){
        
        self.init()
        self.backgroundImage = withImage
        setUpButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpButton()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpButton()
    }
    func setUpButton(){
        
        customButton.setImage(backgroundImage, forState: .Normal)
        customButton.imageView?.contentMode = .ScaleAspectFit
        //customButton
        customButton.layer.backgroundColor = UIColor.whiteColor().CGColor
        customButton.layer.cornerRadius = customButton.bounds.width/2
        self.customView = customButton
        
    }
}
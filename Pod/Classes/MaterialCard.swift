//
//  MaterialCard.swift
//  MaterialCard
//
//  Created by Nathan Walker on 3/20/16.
//  Copyright © 2016 NathanWalker. All rights reserved.
//

import UIKit

public class MaterialCard: UIView {
    
    public var cornerRadius: CGFloat = 2
    
    public var shadowOffsetWidth: Int = 0
    public var shadowOffsetHeight: Int = 2
    public var shadowColor: UIColor? = UIColor.blackColor()
    public var shadowOpacity: Float = 0.4
    
    override public func layoutSubviews() {
        
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.CGColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.CGPath
    }
    
}

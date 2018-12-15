//
//  Extensions.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2018-12-07.
//  Copyright © 2018 Shehryar Bajwa. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
    static func rgb(red: CGFloat , green: CGFloat , blue: CGFloat) -> UIColor{
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}

extension UIView {
    
    func anchor(top : NSLayoutYAxisAnchor? , paddingTop: CGFloat, bottom: NSLayoutYAxisAnchor? , paddingBottom: CGFloat, right: NSLayoutXAxisAnchor?, paddingRight: CGFloat, left: NSLayoutXAxisAnchor?, paddingLeft: CGFloat) {
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
    }
    
}

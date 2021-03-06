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
    
    
    func anchorSize(to view: UIView){
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    struct AnchoredConstraints {
        var top, leading, bottom, trailing, width, height : NSLayoutConstraint?
    }
    
    struct superViewConstraints {
        var top, leading, bottom, trailing : NSLayoutConstraint?
    }
    
    func fillSuperview(padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let superviewTopAnchor = superview?.topAnchor {
            topAnchor.constraint(equalTo: superviewTopAnchor, constant: padding.top).isActive = true
        }
        
        if let superviewBottomAnchor = superview?.bottomAnchor {
            bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: -padding.bottom).isActive = true
        }
        
        if let superviewLeadingAnchor = superview?.leadingAnchor {
            leadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: padding.left).isActive = true
        }
        
        if let superviewTrailingAnchor = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: superviewTrailingAnchor, constant: -padding.right).isActive = true
        }
    }
    
    
    
    func anchor(top: NSLayoutYAxisAnchor? , leading: NSLayoutXAxisAnchor? , bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero){
        
        translatesAutoresizingMaskIntoConstraints = false
        var anchoredConstraint = AnchoredConstraints()
        
        if let top = top {
            anchoredConstraint.top = topAnchor.constraint(equalTo: top, constant: padding.top)
        }
        
        if let leading = leading {
            anchoredConstraint.leading = leadingAnchor.constraint(equalTo: leading, constant: padding.left)
        }
        if let bottom = bottom {
            anchoredConstraint.bottom =  bottomAnchor.constraint(equalTo: bottom, constant: padding.bottom)
        }
        if let trailing = trailing {
            anchoredConstraint.trailing = trailingAnchor.constraint(equalTo: trailing, constant: padding.right)
        }
        
        if size.width != 0{
            anchoredConstraint.width = widthAnchor.constraint(equalToConstant: size.width)
        }
        
        if size.height != 0 {
            anchoredConstraint.height = heightAnchor.constraint(equalToConstant: size.height)
        }
        
        [anchoredConstraint.top , anchoredConstraint.leading, anchoredConstraint.bottom , anchoredConstraint.trailing , anchoredConstraint.width , anchoredConstraint.height].forEach{ $0?.isActive = true}
    }
    
    func centerInSuperView(size: CGSize = .zero){
        translatesAutoresizingMaskIntoConstraints = false
        
        if let superViewCenterXAnchor = superview?.centerXAnchor {
            centerXAnchor.constraint(equalTo: superViewCenterXAnchor).isActive = true
        }
        if let superViewCenterYAnchor = superview?.centerYAnchor {
            centerYAnchor.constraint(equalTo: superViewCenterYAnchor).isActive = true
        }
        
        if size.width != 0{
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0{
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}

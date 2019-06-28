//
//  HomeBottomControlsStackView.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2019-06-28.
//  Copyright © 2019 Shehryar Bajwa. All rights reserved.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        let bottomStack = [UIColor.white, .gray, .purple, .blue, .black].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        bottomStack.map { (v) in
            addArrangedSubview(v)
        }
        
            distribution = .fillEqually
            axis = .horizontal
            translatesAutoresizingMaskIntoConstraints = false
            heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

    
    
    
}

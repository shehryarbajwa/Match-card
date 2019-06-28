//
//  HomeTopControlsStackView.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2019-06-28.
//  Copyright © 2019 Shehryar Bajwa. All rights reserved.
//

import UIKit

class HomeTopControlsStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let topStack = [UIColor.cyan, .green, .orange].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        topStack.map { (v) in
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

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
        
        let topStack = [#imageLiteral(resourceName: "top_left_profile"), #imageLiteral(resourceName: "app_icon"), #imageLiteral(resourceName: "top_left_profile")].map { (image) -> UIButton in
            let button = UIButton(type: .system)
            button.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        topStack.forEach { (v) in
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

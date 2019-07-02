//
//  HomeTopControlsStackView.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2019-06-28.
//  Copyright © 2019 Shehryar Bajwa. All rights reserved.
//

import UIKit

class HomeTopControlsStackView: UIStackView {
    
    let settingsButton = UIButton(type: .system)
    let messagesButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: #imageLiteral(resourceName: "app_icon"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        settingsButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messagesButton.setImage(#imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysOriginal), for: .normal)
        fireImageView.contentMode = .scaleAspectFit
        
        [settingsButton, fireImageView, messagesButton].forEach { (view) in
            addArrangedSubview(view)
        }
        
        distribution = .equalCentering
        axis = .horizontal
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}

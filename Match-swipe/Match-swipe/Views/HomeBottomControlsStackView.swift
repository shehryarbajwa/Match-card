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
        
        
        let bottomStack = [#imageLiteral(resourceName: "refresh_circle"), #imageLiteral(resourceName: "dismiss_circle"), #imageLiteral(resourceName: "super_like_circle"), #imageLiteral(resourceName: "like_circle"), #imageLiteral(resourceName: "boost_circle")].map { (image) -> UIButton in
            let button = UIButton(type: .system)
            button.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        bottomStack.forEach { (v) in
            addArrangedSubview(v)
        }
        
        var reverseButton : UIButton {
            let button = UIButton(type: .system)
            button.setImage(UIImage(named: "refresh_circle"), for: .normal)
            return button
        }
        
        var frontButton : UIButton {
            let button = UIButton(type: .system)
            button.setImage(UIImage(named: "forward_circle"), for: .normal)
            return button
        }
        
        
        
        distribution = .equalCentering
        axis = .horizontal
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

    
    
    
}

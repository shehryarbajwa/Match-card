//
//  HomeBottomControllerStackView.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2019-07-02.
//  Copyright © 2019 Shehryar Bajwa. All rights reserved.
//

import UIKit

class MainstackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let mainView = [HomeTopControlsStackView(), HomeSuperViewControlStackView(), HomeBottomControlsStackView()].map { (view) -> UIView in
            let view = UIView()
            return view
        }
        
        mainView.map { (v) in
            addArrangedSubview(v)
        }
        
        axis = .vertical
        fillSuperView()
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}

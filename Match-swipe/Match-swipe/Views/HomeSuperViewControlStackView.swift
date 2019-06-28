//
//  HomeSuperViewControlStackView.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2019-06-28.
//  Copyright © 2019 Shehryar Bajwa. All rights reserved.
//

import UIKit

class HomeSuperViewControlStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let mainView = [UIColor.red].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        mainView.map { (v) in
            addArrangedSubview(v)
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        distribution = .fillEqually
        
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

//
//  ViewController.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2018-12-07.
//  Copyright © 2018 Shehryar Bajwa. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainView = [UIColor.red].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        
        
        
        let mainStackView = UIStackView(arrangedSubviews: mainView)
        view.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.distribution = .fillEqually
        mainStackView.axis = .vertical
        mainStackView.fillSuperView()
        
        
        //[mainStackView].map { view.addSubview($0)}
        
}

}

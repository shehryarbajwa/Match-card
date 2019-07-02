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
        
        let topStackView = HomeTopControlsStackView()
        
        let overallStackView = HomeSuperViewControlStackView()
        
        let bottomStackView = HomeBottomControlsStackView()
        
        let mainStackView = UIStackView(arrangedSubviews: [topStackView, overallStackView, bottomStackView])
        view.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.axis = .vertical
        mainStackView.fillSuperView()
        
        
        
        
        
}

}

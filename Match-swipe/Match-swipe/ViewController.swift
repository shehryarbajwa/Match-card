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
        
        let topStack = [UIColor.cyan, UIColor.green].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        let bottomStack = [UIColor.white, UIColor.gray].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        let topStackView = UIStackView(arrangedSubviews: topStack)
        topStackView.axis = .horizontal
        topStackView.distribution = .fill
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        let overallStackView = UIStackView(arrangedSubviews: mainView)
        overallStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        let mainStackView = UIStackView(arrangedSubviews: [topStackView, overallStackView])
        view.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.axis = .vertical
        mainStackView.fillSuperView()
        
        
        
}

}

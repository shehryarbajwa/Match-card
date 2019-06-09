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
    
   
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStackViews()
    }
    
    let stackViewTop = [UIColor.blue].map {(color) -> UIView in
        let view = UIView()
        view.backgroundColor = color
        return view
    }
    
    let bottomstackView = [UIColor.red].map {(color) -> UIView in
        let view = UIView()
        view.backgroundColor = color
        return view
    }
    
    func setupStackViews(){
        let stackViewBottom = UIStackView(arrangedSubviews: bottomstackView)
        stackViewBottom.heightAnchor.constraint(equalToConstant: 100).isActive = true
        stackViewBottom.translatesAutoresizingMaskIntoConstraints = false
        stackViewBottom.distribution = .fillEqually
        
        let topStackView = UIStackView(arrangedSubviews: stackViewTop)
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.distribution = .fillProportionally
        
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, greenView, stackViewBottom])
        view.addSubview(overallStackView)
        overallStackView.translatesAutoresizingMaskIntoConstraints = false
        overallStackView.axis = .vertical
        overallStackView.fillSuperView()
        
        
        
    }
    
    
    
}


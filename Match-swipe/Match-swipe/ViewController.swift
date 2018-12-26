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
    
    
    
    
    

    
//    let blueView : UIView = {
//       let view = UIView()
//       view.backgroundColor = .blue
//       view.translatesAutoresizingMaskIntoConstraints = false
//        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
//       return view
//    }()
    
    let blueView : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let redView : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackViews()
    }
    
    func stackViews(){
        
        let topStackView = [UIColor.green , UIColor.darkGray, UIColor.purple].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        let bottomStackView = [UIColor.yellow, UIColor.gray, UIColor.white].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        let stackViewBottom = UIStackView(arrangedSubviews: bottomStackView)
        stackViewBottom.heightAnchor.constraint(equalToConstant: 100).isActive = true
        stackViewBottom.translatesAutoresizingMaskIntoConstraints = false
        stackViewBottom.distribution = .fillEqually
        
        let stackViewTop = UIStackView(arrangedSubviews: topStackView)
        stackViewTop.heightAnchor.constraint(equalToConstant: 100).isActive = true
        stackViewTop.translatesAutoresizingMaskIntoConstraints = false
        stackViewTop.distribution = .fillEqually
        
        let stackView = UIStackView(arrangedSubviews: [stackViewTop, blueView, stackViewBottom])
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.fillSuperView()
    }
    
    
    
}


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

    
    let blueView : UIView = {
       let view = UIView()
       view.backgroundColor = .blue
       view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
       return view
    }()
    
    let orangeView : UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        
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
        stackViewsVertical()
    }
    
    
    func stackViewsVertical(){
        let stackView = UIStackView(arrangedSubviews: [blueView, orangeView, redView])
        view.addSubview(stackView)
        
        //stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.fillSuperView()
        
    }
    
    
    
    @objc func handleLibraryButton(){
        print("Handling the library button")
    }
    
    @objc func handleFriendsButton(){
        print("Handling the friends button")
    }
    
    @objc func handlePlusButton(){
        print("Handling the plus Button")
    }
    
}


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

    
    let redView : UIView = {
       let view = UIView()
       view.backgroundColor = .blue
       view.translatesAutoresizingMaskIntoConstraints = false
       return view
    }()
    
    let orangeView : UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let buttonsView : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackViewsVertical()
        stackViewButtons()
    }
    
    
    func stackViewsVertical(){
        let stackView = UIStackView(arrangedSubviews: [redView, orangeView])
        view.addSubview(stackView)
        
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.fillSuperView()
        
    }
    
    func stackViewButtons(){
        let stackView = UIStackView(arrangedSubviews: [buttonsView])
        view.addSubview(buttonsView)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.anchor(top: orangeView.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 2, left: 0, bottom: 2, right: 0))
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


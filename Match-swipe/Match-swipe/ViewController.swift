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
        //setupStackViews()
        
        view.addSubview(libraryButton)
        view.addSubview(friendsButton)
        
        libraryButton.frame = CGRect(x: 40, y: 40, width: 20, height: 20)
        
//        libraryButton.anchor(top: self.view.topAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, left: self.view.leftAnchor, paddingTop: 10, paddingRight: 2, paddingLeft: 2, paddingBottom: 8, width: 20, height: 20)
//
//        friendsButton.anchor(top: self.view.topAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, left: libraryButton.rightAnchor, paddingTop: 10, paddingRight: 2, paddingLeft: 10, paddingBottom: 8, width: 20, height: 20)
        
    }
    
    let libraryButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "books")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let friendsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "study"), for: .normal)
        button.backgroundColor = .yellow
        return button
    }()
    
//    public func setupStackViews() {
//        let stackView = UIStackView(arrangedSubviews: [libraryButton, friendsButton])
//        stackView.axis = .vertical
//        stackView.spacing = 10
//        stackView.distribution = .fillProportionally
//        view.addSubview(stackView)
//        stackView.anchor(top: self.view.topAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, left: self.view.leftAnchor, paddingTop: 0, paddingRight: 0, paddingLeft: 0, paddingBottom: 5, width: 10, height: 10)
//    }
    
    
    
    
}


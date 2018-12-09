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
        
        
        friendsButton.frame = CGRect(x: 360, y: 100, width: 40, height: 40)
        
        setupConstraints()
        
        
        
//        libraryButton.anchor(top: self.view.topAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, left: self.view.leftAnchor, paddingTop: 10, paddingRight: 2, paddingLeft: 2, paddingBottom: 8, width: 20, height: 20)
//
//        friendsButton.anchor(top: self.view.topAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, left: libraryButton.rightAnchor, paddingTop: 10, paddingRight: 2, paddingLeft: 10, paddingBottom: 8, width: 20, height: 20)
        
    
    }
    let libraryButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "book")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleLibraryButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let friendsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "books")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handleFriendsButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func handleLibraryButton(){
        print("Handling the library button")
    }
    
    @objc func handleFriendsButton(){
        print("Handling the friends button")
    }
    
    func setupConstraints(){
        libraryButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        libraryButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        libraryButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        //libraryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        libraryButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        friendsButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        friendsButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        friendsButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        friendsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
    }
    
//    public func setupStackViews() {
//        let stackView = UIStackView(arrangedSubviews: [libraryButton, friendsButton])
//        stackView.axis = .vertical
//        stackView.spacing = 10
//        stackView.distribution = .fillProportionally
//        view.addSubview(stackView)
//        stackView.anchor(top: self.view.topAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, left: self.view.leftAnchor, paddingTop: 0, paddingRight: 0, paddingLeft: 0, paddingBottom: 5, width: 10, height: 10)
//    }
    
    
    
    
}


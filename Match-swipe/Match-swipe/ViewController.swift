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
        
        view.backgroundColor = .yellow
        
        
        view.addSubview(libraryButton)
        view.addSubview(friendsButton)
        view.addSubview(plusPhotoButton)
        
        
        
        
        setupConstraints()
        
    
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
    
    let plusPhotoButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "plus_photo"), for: .normal)
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
        
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10).isActive = true
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        
    }
}


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
        
        
        
        
        view.addSubview(libraryButton)
        view.addSubview(friendsButton)
        //view.addSubview(plusPhotoButton)
        
        setupStackView()
        
        
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
        button.addTarget(self, action: #selector(handlePlusButton), for: .touchUpInside)
        return button
    }()
    
    let blueview : UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.heightAnchor.constraint(equalToConstant: 400).isActive = true
        view.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        return view
    }()
    
    func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [blueview])
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 10).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 20).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 100).isActive = true
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
}


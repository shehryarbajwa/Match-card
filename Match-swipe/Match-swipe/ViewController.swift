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
        setupStackView()
        setupConstraints()
        
        print(view.frame.width)
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
    
    
    func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [libraryButton, plusPhotoButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        
        
        stackView.anchor(top: view.topAnchor, paddingTop: 100, bottom: view.bottomAnchor, paddingBottom: 100, right: view.rightAnchor, paddingRight: -50, left: view.leftAnchor, paddingLeft: 20)
        
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
        libraryButton.anchor(top: view.topAnchor, paddingTop: 10, bottom: nil, paddingBottom: 0, right: view.rightAnchor, paddingRight: 20, left: view.leftAnchor, paddingLeft: 20)
        
        plusPhotoButton.anchor(top: libraryButton.bottomAnchor, paddingTop: 20, bottom: view.bottomAnchor, paddingBottom: 20, right: view.rightAnchor, paddingRight: -20, left: view.leftAnchor, paddingLeft: 20)
        
    }
}


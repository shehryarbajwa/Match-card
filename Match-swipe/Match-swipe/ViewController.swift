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
//        view.addSubview(libraryButton)
//        view.addSubview(friendsButton)
        setupStackView()
        setupConstraints()
        print(view.frame.height)
    }
//    let libraryButton : UIButton = {
//        let button = UIButton(type: .system)
//        button.setImage(UIImage(named: "book")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.addTarget(self, action: #selector(handleLibraryButton), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.contentMode = .scaleAspectFill
//        return button
//    }()
//
//    let friendsButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setImage(UIImage(named: "books")?.withRenderingMode(.alwaysOriginal), for: .normal)
//        button.addTarget(self, action: #selector(handleFriendsButton), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//
//    let plusPhotoButton : UIButton = {
//        let button = UIButton(type: .system)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setImage(UIImage(named: "plus_photo"), for: .normal)
//        button.addTarget(self, action: #selector(handlePlusButton), for: .touchUpInside)
//        button.contentMode = .scaleAspectFill
//        return button
//    }()
    
    let redView : UIView = {
       let view = UIView()
       view.backgroundColor = .red
       view.translatesAutoresizingMaskIntoConstraints = false
       view.heightAnchor.constraint(equalToConstant: 100).isActive = true
       return view
    }()
    
    let yellowView : UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return view
    }()
    
    let blueView : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return view
    }()
    
    
    
    
    func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [redView,yellowView,blueView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .vertical
        
        view.addSubview(stackView)
        
        stackView.anchor(top: view.topAnchor, paddingTop: 0, bottom: view.bottomAnchor, paddingBottom: 0, right: view.rightAnchor, paddingRight: 0, left: view.leftAnchor, paddingLeft: 0)
        
        
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
        
        
    }
}


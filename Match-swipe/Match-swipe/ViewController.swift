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
    
    let yellowView : UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let blueView : UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        stackViewsVertical()
    }
    
    func stackViewsVertical(){
        let stackView = UIStackView(arrangedSubviews: [redView, yellowView, blueView])
        view.addSubview(stackView)
        
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0))
        
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
        
//        redView.anchor(top: self.view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 100))
//
//        yellowView.anchor(top: redView.bottomAnchor, leading: nil, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 100))
//
//        blueView.anchor(top: self.view.safeAreaLayoutGuide.topAnchor, leading: self.view.leadingAnchor, bottom: yellowView.bottomAnchor, trailing: redView.leadingAnchor, padding: .init(top: 0, left: 30, bottom: 0, right: -30))
        
    }
}


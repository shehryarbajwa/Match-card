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
        
        [redView , yellowView , blueView].forEach {
            view.addSubview($0)
        }
        setupConstraints()
        print(view.frame.height)
    }
    
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


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
        setupStackViews()
    }
    
    let libraryButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "books")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let friendsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "study")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    func setupStackViews() {
        let stackView = UIStackView(arrangedSubviews: [libraryButton, friendsButton])
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillProportionally
    }
    
    
    
    
    
    
    
    
    
    


}


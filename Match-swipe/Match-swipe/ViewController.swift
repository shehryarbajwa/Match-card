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
    }
    
    let topStack = [UIColor.red, UIColor.orange, UIColor.blue].map { (color) -> UIView in
        let view = UIView()
        view.backgroundColor = color
        return view
    }
    
    let topStackView = UIStackView(arrangedSubviews: topStack)
    
    
  
}


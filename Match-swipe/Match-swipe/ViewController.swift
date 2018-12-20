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
       view.backgroundColor = .red
       view.translatesAutoresizingMaskIntoConstraints = false
       return view
    }()
    
    let yellowView : UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let blueView : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let orangeView : UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let purpleView : UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let greenView : UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let blackView : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [redView , yellowView , blueView, orangeView, purpleView, greenView, blackView].forEach {
            view.addSubview($0)
        }
        setupConstraints()
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
        
        redView.anchor(top: self.view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 100))
        
        yellowView.anchor(top: redView.bottomAnchor, leading: nil, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 100))
        
        blueView.anchor(top: self.view.safeAreaLayoutGuide.topAnchor, leading: self.view.leadingAnchor, bottom: yellowView.bottomAnchor, trailing: redView.leadingAnchor, padding: .init(top: 0, left: 30, bottom: 0, right: -30))
        
        orangeView.anchor(top: yellowView.bottomAnchor, leading: nil, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 50, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 100))
        
        purpleView.anchor(top: orangeView.bottomAnchor, leading: nil, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 100))
        
        greenView.anchor(top: self.blueView.bottomAnchor, leading: self.view.leadingAnchor, bottom: purpleView.bottomAnchor, trailing: orangeView.leadingAnchor, padding: .init(top: 50, left: 30, bottom: 0, right: -30))
        
        blackView.anchor(top: self.greenView.bottomAnchor, leading: self.view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 30, bottom: 0, right: 0), size: .init(width: 200, height: 200))
    }
}


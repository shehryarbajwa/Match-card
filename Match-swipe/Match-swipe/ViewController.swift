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
    
    let topStackView = HomeTopControlsStackView()
    
    let cardDeckView = UIView()
    
    let bottomStackView = HomeBottomControlsStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutViews()
        setupCards()
}
    
    fileprivate func setupCards(){
        let cardView = CardViewController()
        cardDeckView.addSubview(cardView)
        cardView.fillSuperview()
    }
    
    fileprivate func layoutViews() {
        let mainStackView = UIStackView(arrangedSubviews: [topStackView, cardDeckView, bottomStackView])
        view.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.axis = .vertical
        mainStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }

}

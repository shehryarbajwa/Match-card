//
//  CardViewController.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2019-07-04.
//  Copyright © 2019 Shehryar Bajwa. All rights reserved.
//

import UIKit

class CardViewController: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupPanGestures()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupViews() {
        let cardImage = UIImageView(image: #imageLiteral(resourceName: "resize"))
        layer.cornerRadius = 10
        clipsToBounds = true
        addSubview(cardImage)
        cardImage.fillSuperview()
        
    }
    
    fileprivate func setupPanGestures(){
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        addGestureRecognizer(panGesture)
    }
    
    @objc func handlePan(gesture: UIPanGestureRecognizer){
        let translation = gesture.translation(in: nil)
        print(translation.x)
        print(translation.y)
        
        self.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
    }
    
    

}

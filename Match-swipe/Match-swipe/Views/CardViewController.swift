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
        createPanGesture()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupViews() {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Profilepicture"))
        layer.cornerRadius = 10
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        imageView.fillSuperview()
    }
    
    fileprivate func createPanGesture(){
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture))
        addGestureRecognizer(panGesture)
    }
    
    @objc fileprivate func handlePanGesture(gesture: UIPanGestureRecognizer){
        let translation = gesture.translation(in: nil)
        print(translation.x)
    }
    

}

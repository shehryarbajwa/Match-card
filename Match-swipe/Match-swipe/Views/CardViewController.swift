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
        
        switch gesture.state {
        case .began:
            print("pan gesture was touched")
        case .changed:
            handleGesturechanged(gesture)
        case .ended:
            handleGestureEnd()
            break
            
        default:
            ()
        }
    }
    
    fileprivate func handleGestureEnd() {
        UIView.animate(withDuration: 1, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.transform = .identity
        }) { (_) in
        }
    }
    
    fileprivate func handleGesturechanged(_ gesture: UIPanGestureRecognizer) {
        let translate = gesture.translation(in: nil)
        transform = CGAffineTransform(translationX: translate.x, y: translate.y)
    }
    
    

}

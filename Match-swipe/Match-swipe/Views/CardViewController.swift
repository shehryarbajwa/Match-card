//
//  CardViewController.swift
//  Match-swipe
//
//  Created by Shehryar Bajwa on 2019-07-04.
//  Copyright © 2019 Shehryar Bajwa. All rights reserved.
//

import UIKit

class CardViewController: UIView {
    
    fileprivate let imageView = UIImageView(image: #imageLiteral(resourceName: "Profilepicture"))

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        //backgroundColor = .red
        addSubview(imageView)
        imageView.fillSuperview()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

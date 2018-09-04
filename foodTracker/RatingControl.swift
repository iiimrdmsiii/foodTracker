//
//  RatingControl.swift
//  foodTracker
//
//  Created by Dallin Smuin on 8/30/18.
//  Copyright © 2018 Dallin Smuin. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    // MARK: Properties
    private var ratingButton = [UIButton]()
    
    var rating = 0
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Button Action
    
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
    // MARK: Private Methods
    
    private func setupButtons() {
        
        for _ in 0..<5{
        // create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
            
        
        
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Set up button action
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        
        // Add the button to the stack
        addArrangedSubview(button)
    }
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
}

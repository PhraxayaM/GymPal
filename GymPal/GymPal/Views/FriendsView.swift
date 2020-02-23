//
//  FriendsView.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/7/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class FriendsView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setup() {
        setupView()
    }
    
    func setupView(){
        
        
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "GymPal"
        return label
    }()
    
    let currentViewLabel: UILabel = {
        let label = UILabel()
        label.text = "Friends"
        
        return label
    }()
    
    
}

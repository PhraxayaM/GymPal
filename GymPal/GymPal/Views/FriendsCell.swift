//
//  FriendsCell.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/7/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class FriendsCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 40
        self.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let friendNameLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.textAlignment = .center
        
        return label
        
    }()
    
    func setup() {
        setupSubview()
        setupConstraints2()
    }
    

    func setupSubview() {
        addSubview(friendNameLabel)
    }

    func setupConstraints2() {
        friendNameLabel.translatesAutoresizingMaskIntoConstraints = false
        friendNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        friendNameLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        friendNameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        friendNameLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        friendNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        friendNameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
        friendNameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10).isActive = true
    }
    
    
    }


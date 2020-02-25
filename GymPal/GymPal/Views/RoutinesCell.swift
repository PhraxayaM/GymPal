//
//  RoutinesCell.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/10/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class RoutinesCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.masksToBounds = false
        self.layer.cornerRadius = frame.height/2
        self.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let workoutTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.textAlignment = .center
        
//        label.font = UIFont(name: "Lacquer", size: 90)
        
        
        
        return label
    }()
    
    func setup() {
        setupSubview()
        setupConstraints2()
        
    }
    
    
    func setupSubview() {
        
        addSubview(workoutTitleLabel)
        
    }
    
    
    func setupConstraints2() {
        
        workoutTitleLabel.translatesAutoresizingMaskIntoConstraints = false


        NSLayoutConstraint.activate([
            workoutTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            workoutTitleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),

        ])
        
    }
    
}

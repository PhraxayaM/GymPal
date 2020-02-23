//
//  RoutinesCollectionViewConstraints.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/23/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

extension RoutinesCollectionViewController {
    
    func setupConstraints() {
        gymTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        gymTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        gymTitleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        welcomeUser.translatesAutoresizingMaskIntoConstraints = false
        welcomeUser.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        welcomeUser.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
        
        savedTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        savedTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120).isActive = true
        savedTitleLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
    }
    
    
}

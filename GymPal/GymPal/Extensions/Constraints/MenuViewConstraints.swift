//
//  MenuViewConstraints.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/7/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

extension MenuView{
    
    func setupConstraints() {
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        friendsButton.translatesAutoresizingMaskIntoConstraints = false
        friendsButton.topAnchor.constraint(equalTo: topAnchor, constant: 200).isActive = true
        friendsButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        friendsButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        friendsButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        routinesButton.translatesAutoresizingMaskIntoConstraints = false
        routinesButton.topAnchor.constraint(equalTo: friendsButton.topAnchor, constant: 100).isActive = true
        routinesButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        routinesButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        routinesButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
}

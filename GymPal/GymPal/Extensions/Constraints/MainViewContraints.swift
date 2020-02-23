//
//  MenuViewContraints.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/6/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation

import UIKit

extension MainView {
    func setupConstraints(){
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        gymTitle.translatesAutoresizingMaskIntoConstraints = false
        gymTitle.topAnchor.constraint(equalTo: topAnchor, constant: 200).isActive = true
        gymTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 140).isActive = true
        gymTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: 50).isActive = true
        gymTitle.heightAnchor.constraint(equalToConstant: 200).isActive = true
        gymTitle.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
}

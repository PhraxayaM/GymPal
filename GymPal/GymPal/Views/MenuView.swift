//
//  MenuView.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/7/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MenuView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        setupView()
        setupConstraints()
        
    }
    
    func setupView(){
        addSubview(backgroundImage)
        addSubview(friendsButton)
        addSubview(routinesButton)
    }
    
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background2")
        image.contentMode = .scaleAspectFill
        
        return image
    }()
    
       let gymTitle: UILabel = {
            let label = UILabel()
            label.text = "Gym Pal"
            label.textColor = #colorLiteral(red: 0.3921568627, green: 0.8156862745, blue: 0.5882352941, alpha: 1)
            label.font = UIFont.systemFont(ofSize: 40)
            
            return label
        }()
    
    let friendsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Friends", for: .normal)
//        button.tintColor = #colorLiteral(red: 0.3921568627, green: 0.8156862745, blue: 0.5882352941, alpha: 1)
        button.setTitleColor(#colorLiteral(red: 0.3921568627, green: 0.8156862745, blue: 0.5882352941, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 45
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        
        return button
    }()
    
    let routinesButton: UIButton = {
        let button = UIButton()
        button.setTitle("Routines", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.3921568627, green: 0.8156862745, blue: 0.5882352941, alpha: 1), for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.3921568627, green: 0.8156862745, blue: 0.5882352941, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 45
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        return button
    }()
    
}

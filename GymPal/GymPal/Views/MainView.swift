//
//  MenuView.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/6/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class MainView: UIView {

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
        addSubview(gymTitle)
    }
    
    
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background")
        
        return image
    }()
    
    let gymTitle: UILabel = {
        let label = UILabel()
        label.text = "Gym Pal"
        label.textColor = #colorLiteral(red: 0.3921568627, green: 0.8156862745, blue: 0.5882352941, alpha: 1)
//        label.font.withSize(60)
        label.font = UIFont.systemFont(ofSize: 40)
        
        return label
    }()
    
    
    
}

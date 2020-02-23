//
//  MenuViewController.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/7/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController {
    var menuView = MenuView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        setupView()
    }
    
    func setupView(){
        let MenuViews = MenuView(frame: self.view.frame)
        self.menuView = MenuViews
        self.view.addSubview(menuView)
    }
    
    
}



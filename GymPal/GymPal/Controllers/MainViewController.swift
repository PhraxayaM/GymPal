//
//  MenuScreenViewController.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/6/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var mainView = MainView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        setup()
    }
    
    func setup(){
        setupView()
        
    }
    
    func setupView(){
        let MainViews = MainView(frame: self.view.frame)
        self.mainView = MainViews
        self.view.addSubview(mainView)
    }

}

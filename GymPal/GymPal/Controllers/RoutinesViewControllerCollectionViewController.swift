//
//  RoutinesViewControllerCollectionViewController.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/8/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class RoutinesCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let workoutTitle = ["Chest workout", "Leg workout", "Bi and Tri", "Deadly core routine", "Back breaker", "Heavy Chest mode"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Register cell classes
        self.collectionView!.register(RoutinesCell.self, forCellWithReuseIdentifier: "cellId")
        setupNavBar()
        collectionView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        setup()
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width/2 + 120, height: self.view.frame.height/4 - 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 200, left: 35, bottom: 50, right: 35)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return workoutTitle.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! RoutinesCell
        cell.addGradientBackground(firstColor: #colorLiteral(red: 0.8980392157, green: 0.7019607843, blue: 0.4352941176, alpha: 1), secondColor: #colorLiteral(red: 0.9647058824, green: 0.7803921569, blue: 0.5058823529, alpha: 1))
        cell.workoutTitleLabel.text = workoutTitle[indexPath.row]
        cell.workoutTitleLabel.font = UIFont(name: "Dancing Script", size: 40)
        return cell
    }
    
    func setupNavBar() {
        self.title = "GymPal Routines"
        
        
    }
    
    func setup(){
        view.addSubview(gymTitleLabel)
        view.addSubview(welcomeUser)
        view.addSubview(savedTitleLabel)
        setupConstraints()
    }
    
    let gymTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Gym Pal"
//        label.textColor = #colorLiteral(red: 0.3921568627, green: 0.8156862745, blue: 0.5882352941, alpha: 1)
        label.addGradientBackground(firstColor: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), secondColor: #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
        label.font = UIFont.systemFont(ofSize: 40)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        return label
    }()
    
    let welcomeUser: UILabel = {
        let label = UILabel()
        label.text = "Welcome MattySwole!"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return label
    }()
    
    let savedTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Your saved routines"
//        label.font = UIFont.systemFont(ofSize: 20)
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return label
        
    }()
    
}



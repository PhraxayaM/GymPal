//
//  FriendsViewController.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/7/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class FriendsCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout  {
    
    let friendsTitle = ["SwoleJon", "RicardoR", "RamonG"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        collview.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        collectionView.backgroundColor = #colorLiteral(red: 0.3137254902, green: 0, blue: 0.9686274529, alpha: 1)
        
        collectionView.register(FriendsCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width/2 + 120, height: self.view.frame.height/3 - 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 100, left: 35, bottom: 50, right: 35)
            }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friendsTitle.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! FriendsCell
        
        cell.friendNameLabel.text = friendsTitle[indexPath.row]
        cell.addGradientBackground(firstColor: .orange, secondColor: .blue)
        return cell
        
    }
    
}



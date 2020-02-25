//
//  SavedRoutinesViewController.swift
//  GymPal
//
//  Created by MattHew Phraxayavong on 2/23/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class SavedResultsRoutinesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var mainView = SavedRoutinesResultsView()
    
    override func viewDidLoad() {
           super.viewDidLoad()
//           view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
           setup()
//        mainView.tableView.register(self, forCellReuseIdentifier: "cell")
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
        mainView.tableView.register(SavedRoutinesResultCell.self, forCellReuseIdentifier: "cell")
       }

       func setup() {
           setupView()

       }
    
       func setupView() {
           let mainViews = SavedRoutinesResultsView(frame: self.view.frame)
           self.mainView = mainViews
           self.view.addSubview(mainView)

       }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SavedRoutinesResultCell
            cell.backgroundColor = .red
                    cell.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//            cell.titleLabel.text = articles[indexPath.row].title
//            cell.textLabel = "test"
//            cell.textLabel?.text = NetworkLayer.shared.fetch(category: <#T##String#>)
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}


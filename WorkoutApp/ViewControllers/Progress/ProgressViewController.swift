//
//  ProgressViewController.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 05.07.2023.
//

import UIKit

class ProgressViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Workout Progress"
        
        navigationController?.tabBarItem.title = Constants.TabBarNames.progress
        insertNavBarButton(at: .left, with: "Export")
        insertNavBarButton(at: .right, with: "Details")

    }


}

//
//  SettingsViewController.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 05.07.2023.
//

import UIKit

class SettingsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Settigns"
        navigationController?.tabBarItem.title = Constants.TabBarNames.settings
    }


}

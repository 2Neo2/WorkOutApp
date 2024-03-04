//
//  NavigationBarViewController.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 05.07.2023.
//

import UIKit

final class NavigationBarViewController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
    }
    
    private func setupNavBar() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Constants.Colors.titleGrayColor,
            .font: Constants.Fonts.helvelticaRegular(with: 17)
        ]
    }
}

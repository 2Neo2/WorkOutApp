//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 01.07.2023.
//

import UIKit

class OverviewViewController: BaseViewController {
    
    private let navigationBar = OverviewNavBar()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension OverviewViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(navigationBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: view.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func setupView() {
        super.setupView()
        navigationController?.navigationBar.isHidden = true
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
    }
}

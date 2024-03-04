//
//  BaseViewController.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 05.07.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addViews()
        layoutViews()
    }
    
}

@objc extension BaseViewController {
     
    func addViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func setupView(){
        view.backgroundColor = Constants.Colors.backgroundColor
    }
    
    func navBarLeftButtonHandler() {
        
    }
    
    func navBarRightButtonHandler() {
        
    }
}

extension BaseViewController {
    func insertNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        
        button.setTitle(title, for: .normal)
        
        button.setTitleColor(Constants.Colors.active, for: .normal)
        button.setTitleColor(Constants.Colors.inactive, for: .disabled)
        
        button.titleLabel?.font = Constants.Fonts.helvelticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    
    func setTitleForNavBarButton(_ title: String, at position: NavBarPosition) {
        switch position {
        case .left:
            (navigationItem.leftBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        case .right:
            (navigationItem.rightBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        }
    }
}

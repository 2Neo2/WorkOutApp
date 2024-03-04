//
//  BaseNavBar.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 27.07.2023.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        addViews()
        layoutViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


@objc extension BaseView {
    func addViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func setupView(){
        
    }
}




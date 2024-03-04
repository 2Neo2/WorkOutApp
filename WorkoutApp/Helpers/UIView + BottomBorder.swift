//
//  UIView + BottomBorder.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 05.07.2023.
//

import UIKit

extension UIView {
    func insertBottomBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        separator.frame = CGRect(x: 0, y: frame.height - height, width: frame.width, height: height)
        
        addSubview(separator)
    }
    
    func allWorkoutsAnimationButton(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])
        
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }
    
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 0.55
        })
    }
    
    @objc func handleOut() {
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 1
        })
    }
}

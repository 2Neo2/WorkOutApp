//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 05.07.2023.
//

import UIKit

public enum WoroutAppButtonType {
    case primary
    case secondary
}

final class WorkoutAppButton: UIButton {
    private var type: WoroutAppButtonType = .primary
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        
        return label
    }()
    
    private let iconView: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = Constants.OverviewConstants.Images.downArrowImage?.withRenderingMode(.alwaysTemplate)
        return icon
    }()
    
    init(with type: WoroutAppButtonType) {
        super.init(frame: .zero)
        self.type = type
        setupViews()
        addViews()
        layoutViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        setupViews()
        layoutViews()
        addViews()
    }
    
    func setLableText(_ text: String?) {
        label.text = text
    }
}

private extension WorkoutAppButton {
    func addViews() {
        addSubview(label)
        addSubview(iconView)
    }
    
    func layoutViews() {
        var horizontalOffset: CGFloat {
            switch type {
            case .primary:
                return 0
            case .secondary:
                return 10
            }
        }
        
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -horizontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: horizontalOffset * 2)
        ])
    }
    
    func setupViews() {
        switch type {
        case .primary:
            label.textColor = Constants.Colors.inactive
            label.font = Constants.Fonts.helvelticaRegular(with: 13)
            label.tintColor = Constants.Colors.inactive
            iconView.tintColor = Constants.Colors.inactive
            
        case .secondary:
            self.backgroundColor = Constants.OverviewConstants.Colors.backgroundColor
            self.layer.cornerRadius = 14
            label.textColor = Constants.Colors.active
            label.font = Constants.Fonts.helvelticaRegular(with: 15)
            label.tintColor = Constants.Colors.active
            iconView.tintColor = Constants.Colors.active

        }
        
        allWorkoutsAnimationButton(self)
    }
}

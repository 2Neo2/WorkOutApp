//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 27.07.2023.
//

import UIKit


final class OverviewNavBar: BaseView {
    private let label = UILabel()
    private let allWorkoutsButton = WorkoutAppButton(with: .secondary)
    private let plusButton = UIButton()
    private let weekView = WeekView()
    override func layoutSubviews() {
        insertBottomBorder(with: Constants.Colors.separator, height: 1)
    }
    
    private func addAllWorkoutsButtonAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(self, action: action, for: .touchUpInside)
    }
    
    private func plusButtonAction(_ action: Selector, with target: Any?) {
        plusButton.addTarget(self, action: action, for: .touchUpInside)
    }
}


extension OverviewNavBar {
    override func addViews() {
        super.addViews()
        self.addSubview(allWorkoutsButton)
        self.addSubview(label)
        self.addSubview(plusButton)
        self.addSubview(weekView)
    }
    
    override func setupView() {
        super.setupView()
        backgroundColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Constants.OverviewConstants.Titles.titleLabel
        label.textColor = Constants.Colors.titleGrayColor
        label.font = Constants.Fonts.helvelticaRegular(with: 22)
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setLableText(Constants.OverviewConstants.Titles.allWorkoutsTitle)
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        plusButton.setImage(Constants.OverviewConstants.Images.addButtonImage, for: .normal)
        
        weekView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            plusButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            plusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            plusButton.heightAnchor.constraint(equalToConstant: 28),
            plusButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: plusButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: plusButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            
            label.centerYAnchor.constraint(equalTo: plusButton.centerYAnchor),
            label.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: plusButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }
}

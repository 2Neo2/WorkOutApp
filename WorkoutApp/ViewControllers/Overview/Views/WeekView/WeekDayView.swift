//
//  WeekDayView.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 28.07.2023.
//

import UIKit

extension WeekView {
    final class WeekDayView: BaseView {
        private let name = UILabel()
        private let date = UILabel()
        private let stackView = UIStackView()
        
        func configureCell(with index: Int, date name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.goForward(to: index)
            let day = Date.calendar.component(.day, from: currentDay)
            
            let isToday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? Constants.Colors.active : Constants.Colors.backgroundColor
            
            self.name.text = name.uppercased()
            self.name.textColor = isToday ? .white : Constants.Colors.inactive
            
            date.text = "\(day)"
            date.textColor = isToday ? .white : Constants.Colors.inactive
        }
    }
}

extension WeekView.WeekDayView {
    override func addViews() {
        super.addViews()
        addSubview(stackView)
        stackView.addArrangedSubview(name)
        stackView.addArrangedSubview(date)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func setupView() {
        super.setupView()
        
        backgroundColor = .red
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        name.font = Constants.Fonts.helvelticaRegular(with: 9)
        name.textAlignment = .center
        
        date.font = Constants.Fonts.helvelticaRegular(with: 15)
        date.textAlignment = .center
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 3
        stackView.axis = .vertical
    }
}


//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 28.07.2023.
//

import UIKit


final class WeekView: BaseView {
    private let stackView = UIStackView()
}

extension WeekView {
    override func addViews() {
        super.addViews()
        addSubview(stackView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func setupView(){
        super.setupView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        var shortDaysName = Date.calendar.shortStandaloneWeekdaySymbols
        
        if Date.calendar.firstWeekday == 2 {
            let sun = shortDaysName.remove(at: 0)
            shortDaysName.append(sun)
        }
        
        shortDaysName.enumerated().forEach { index, nameDate in
            let day = WeekDayView()
            day.configureCell(with: index, date: nameDate)
            stackView.addArrangedSubview(day)
        }
    }
}

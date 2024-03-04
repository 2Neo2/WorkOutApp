//
//  Date + current.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 28.07.2023.
//

import UIKit

extension Date {
    static var calendar: Calendar = {
        var calendar = Calendar(identifier: .gregorian)
        calendar.firstWeekday = 2
        return calendar
    }()
    
    var startOfWeek: Date {
        let components = Date.calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstday = Date.calendar.date(from: components) else {return self}
        return Date.calendar.date(byAdding: .day, value: 1, to: firstday) ?? self
    }
    
    func goForward(to days: Int) -> Date {
        return Date.calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = Date.calendar.dateComponents([.year, .month, .day], from: self)
        
        return Date.calendar.date(from: components) ?? self
    }
}

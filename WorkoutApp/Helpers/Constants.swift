//
//  Constants.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 01.07.2023.
//

import UIKit

enum Constants {
    enum Colors {
        static let active = UIColor(hexStringValue: "#437BFE")
        static let inactive = UIColor(hexStringValue: "#929DA5")
        
        static let backgroundColor = UIColor(hexStringValue: "#F8F9F9")
        static let titleGrayColor = UIColor(hexStringValue: "#545C77")
        static let separator = UIColor(hexStringValue: "#E8ECEF")
    }
    
    enum TabBarNames {
        static let overview = "Overview"
        static let session = "Session"
        static let progress = "Progress"
        static let settings = "Settings"
    }
    
    enum TabBarImages {
        static let houseIcon = UIImage(named: "house_icon")
        static let clockIcon = UIImage(named: "clock_icon")
        static let progressIcon = UIImage(named: "progress_icon")
        static let settingsIcon = UIImage(named: "settings_icon")
    }
    
    enum OverviewConstants {
        enum Colors {
            static let backgroundColor = UIColor(hexStringValue: "#F0F3FF")
        }
        
        enum Titles {
            static var allWorkoutsTitle = "All Workouts"
            static var titleLabel = "Today"
        }
        enum Images {
            static var downArrowImage = UIImage(named: "down_arrow")
            static var addButtonImage = UIImage(named: "add_button")
        }
    }
    
    enum SessionConstants {
        enum Labels {
            static let navBarStart = "Start    "
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
        }
    }
    
    enum ProgressConstants {
        
    }
    
    enum SettingsConstants {
        
        
    }
    
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}

enum TabBarTags : Int {
    case overview
    case session
    case progress
    case settings
}

//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 01.07.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        setupTapBar()
        setupNavBar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTapBar() {
        tabBar.tintColor = Constants.Colors.active
        tabBar.barTintColor = Constants.Colors.inactive
        
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Constants.Colors.separator.cgColor
        
        tabBar.layer.borderWidth = 1
        
        tabBar.layer.masksToBounds = true
    }
    
    func setupNavBar() {
        
        let overviewViewController = OverviewViewController()
        let sessionViewController = SessionViewController()
        let progressViewController = ProgressViewController()
        let settingsViewController = SettingsViewController()
        
        
        let overviewNavigation = NavigationBarViewController(rootViewController: overviewViewController)
        let sessionNavigation = NavigationBarViewController(rootViewController: sessionViewController)
        let progressNavigation = NavigationBarViewController(rootViewController: progressViewController)
        let settingsNavigation = NavigationBarViewController(rootViewController: settingsViewController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Constants.TabBarNames.overview, image: Constants.TabBarImages.houseIcon, tag: TabBarTags.overview.rawValue)
        
        sessionNavigation.tabBarItem = UITabBarItem(title: Constants.TabBarNames.session, image: Constants.TabBarImages.clockIcon, tag: TabBarTags.session.rawValue)
        
        progressNavigation.tabBarItem = UITabBarItem(title: Constants.TabBarNames.progress, image: Constants.TabBarImages.progressIcon, tag: TabBarTags.progress.rawValue)
        
        settingsNavigation.tabBarItem = UITabBarItem(title: Constants.TabBarNames.settings, image: Constants.TabBarImages.settingsIcon, tag: TabBarTags.settings.rawValue)
        
        
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: false)
    }
}

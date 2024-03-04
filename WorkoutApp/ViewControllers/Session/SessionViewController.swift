//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by Иван Доронин on 05.07.2023.
//

import UIKit

class SessionViewController: BaseViewController {
    private let timerDuration = 3.0
    
    private let timerView: TimerView = {
        let view = TimerView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isPaused : .isRunning
        
        setTitleForNavBarButton(timerView.state == .isRunning ? Constants.SessionConstants.Labels.navBarPause : Constants.SessionConstants.Labels.navBarStart, at: .left)
        
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        
        setTitleForNavBarButton(Constants.SessionConstants.Labels.navBarStart, at: .left)
    }
}


extension SessionViewController {
    override func setupView() {
        super.setupView()
        title = "High Intesity Cardio"
        
        navigationController?.tabBarItem.title = Constants.TabBarNames.session
        
        insertNavBarButton(at: .left, with: Constants.SessionConstants.Labels.navBarStart)
        insertNavBarButton(at: .right, with: Constants.SessionConstants.Labels.navBarFinish)
        
        timerView.configureView(with: timerDuration, progress: 0)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
    }
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(timerView)
    }
}

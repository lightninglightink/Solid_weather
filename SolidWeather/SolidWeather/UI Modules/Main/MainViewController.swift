//
//  MainViewController.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class MainViewController: ViewController<MainRouter, MainViewModel> {
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .cyan
    }
}

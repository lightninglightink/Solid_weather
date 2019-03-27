//
//  MainViewModel.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class MainViewModel: ViewModel<MainRouter> {
    
    var currentWeather: Weather?
    var currentWeekWeather: [Weather]?
    
    override init() {
        super.init()
        
        Services.shared.weather.getCurrentWeather(location: "London") { [weak self] (weather) in
            self?.currentWeather = weather
        }
        Services.shared.weather.getCurrentWeekWeather(location: "London") { [weak self] (weekWeather) in
            self?.currentWeekWeather = weekWeather
        }
    }
    
    func showDetail() {
        router.route(to: .detail)
    }
}

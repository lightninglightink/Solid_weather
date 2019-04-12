//
//  DetailViewModel.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class DetailViewModel: ViewModel<DetailRouter> {
    
    var weather: Weather
    
    init(weather: Weather) {
        self.weather = weather
        super.init()
    }
}

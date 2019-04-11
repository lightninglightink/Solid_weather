//
//  MainViewModel.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class MainViewModel: ViewModel<MainRouter> {
    
    let city = "London"
    
    var sections: [Section] = [] {
        didSet {
            updated()
        }
    }
    
    override init() {
        super.init()
        
//        Services.shared.weather.getCurrentWeather(location: city) { [weak self] (weather) in
//            self?.sections = [Section(type: .today, items: [ Cell(type: .today(weather)) ])]
//        }
        
        Services.shared.weather.getCurrentWeekWeather(location: city) { [weak self] (weekWeather) in
            weekWeather.weatherArray?
                .forEach {
                    self?.sections.append(Section(type: .week,
                                                  items: [ Cell(type: .weekly($0)) ]))
            }
        }
    }
    
    func showDetail() {
        router.route(to: .detail)
    }
}

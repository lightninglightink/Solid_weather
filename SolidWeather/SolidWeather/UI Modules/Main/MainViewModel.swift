//
//  MainViewModel.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import UIKit

class MainViewModel: ViewModel<MainRouter> {
    
    let city = "London"
    
    var sections: [Section] = [] {
        didSet {
            updated()
        }
    }
    
    private var todaySection: Section? {
        didSet {
            generateSections()
        }
    }
    private var weeklySection: Section? {
        didSet {
            generateSections()
        }
    }
    
    override init() {
        super.init()
        
        Services.shared.weather.getCurrentWeather(location: city) { [weak self] (weather) in
            self?.todaySection = Section(type: .today, items: [ Cell(type: .today, weather: weather) ])
        }
        
        Services.shared.weather.getCurrentWeekWeather(location: city) { [weak self] (weekWeather) in
            var cells: [Cell] = []
            weekWeather.weatherArray?.forEach { cells.append( Cell(type: .weekly, weather: $0) ) }
            self?.weeklySection = Section(type: .week, items: cells)
        }
    }
    
    private func generateSections() {
        sections = []
        if let today = todaySection {
            sections.append(today)
        }
        if let weekly = weeklySection {
            sections.append(weekly)
        }
    }
    
    func showDetail(at indexPath: IndexPath) {
        let section = sections[indexPath.section]
        let weather = section.items[indexPath.row].weather
        
        router.route(to: .detail(weather))
    }
}

//
//  MainViewModel+Section.swift
//  SolidWeather
//
//  Created by Igor Dev on 4/2/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

extension MainViewModel {
    
    struct Section {
        
        var items: [Cell]
        var type: Type
        
        enum `Type`: String {
            case today
            case week
        }
        
        init(type: Type, items: [Cell]) {
            self.type = type
            self.items = items
        }
    }
    
    struct Cell {
        
        enum CellType {
            case today
            case weekly
        }
        
        var type: CellType
        var weather: Weather
        
        init(type: CellType, weather: Weather) {
            self.weather = weather
            self.type = type
        }
    }
}

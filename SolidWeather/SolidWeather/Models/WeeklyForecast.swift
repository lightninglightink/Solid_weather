//
//  WeeklyForecast.swift
//  SolidWeather
//
//  Created by Igor Dev on 4/5/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

struct WeeklyForecast: Decodable {
    
    var weatherArray: [Weather]?
    
    enum CodingKeys: String, CodingKey {
        case weatherArray = "list"
    }
}

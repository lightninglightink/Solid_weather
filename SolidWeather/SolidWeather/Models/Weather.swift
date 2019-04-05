//
//  Weather.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

//    "weather":[{"id":300,"main":"Drizzle","description":"light intensity drizzle","icon":"09d"}],
//    "main":{"temp":280.32,"pressure":1012,"humidity":81,"temp_min":279.15,"temp_max":281.15},
//    "visibility":10000,
//    "wind":{"speed":4.1,"deg":80},
//    "clouds":{"all":90},
//    "sys":{"type":1,"id":5091,"message":0.0103,"country":"GB","sunrise":1485762037,"sunset":1485794875},
//    "name":"London",

import Foundation

struct Weather: Decodable {
    
    var city: String?
    var wind: Wind?
    var clouds: Clouds?
    var measurements: Measurements?
    var visibility: Int = -1
//    var sunrise: Date?
//    var sunset: Date?
    var mainWeather: [MainWeather]?
    
    enum CodingKeys: String, CodingKey {
        case city = "name"
        case wind
        case clouds
        case measurements = "main"
        case visibility
//        case sunrise
//        case sunset
        case mainWeather = "weather"
    }
}

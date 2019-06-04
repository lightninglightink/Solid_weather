//
//  Measurements.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/25/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

struct Measurements: Decodable {

    var temperature: Double?
    var pressure: Int?
    var humidity: Int?
    var minimalTemperature: Double?
    var maximalTemperature: Double?
    
    enum CodingKeys: String, CodingKey {
        case temperature = "temp"
        case pressure
        case humidity
        case minimalTemperature = "temp_min"
        case maximalTemperature = "temp_max"
    }
}

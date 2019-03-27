//
//  Measurements.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/25/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

struct Measurements: Decodable {

    var temperature: Double
    var pressure: Int
    var humidity: Int
    var minimalTemperature: Double
    var maximalTemperature: Double
    
    enum CodingKeys: String, CodingKey {
        case temperature = "temp"
        case pressure
        case humidity
        case minimalTemperature = "temp_min"
        case maximalTemperature = "temp_max"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        temperature = try container.decode(Double.self, forKey: .temperature)
        pressure = try container.decode(Int.self, forKey: .pressure)
        humidity = try container.decode(Int.self, forKey: .humidity)
        minimalTemperature = try container.decode(Double.self, forKey: .minimalTemperature)
        maximalTemperature = try container.decode(Double.self, forKey: .maximalTemperature)

    }
}

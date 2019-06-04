//
//  Weather.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

struct Weather: Decodable {
    
    var wind: Wind?
    var clouds: Clouds?
    var measurements: Measurements?
    var visibility: Int?
    var mainWeather: [MainWeather]?
    var timestamp: Int?
    
    enum CodingKeys: String, CodingKey {
        case city = "name"
        case wind
        case clouds
        case measurements = "main"
        case visibility
        case mainWeather = "weather"
        case timestamp = "dt"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        wind = try? container.decode(Wind.self, forKey: .wind)
        clouds = try? container.decode(Clouds.self, forKey: .clouds)
        measurements = try? container.decode(Measurements.self, forKey: .measurements)
        visibility = try? container.decode(Int.self, forKey: .visibility)
        mainWeather = try? container.decode([MainWeather].self, forKey: .mainWeather)
        timestamp = try? container.decode(Int.self, forKey: .timestamp)
    }
}

//
//  Wind.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

struct Wind: Decodable {
    
    var speed: Double
    var degrees: Int?
    
    enum CodingKeys: String, CodingKey {
        case speed
        case degrees = "deg"
    }
}

//
//  Clouds.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

struct Clouds: Decodable {
    
    var all: Int
    
    enum CodingKeys: String, CodingKey {
        case all
    }
}

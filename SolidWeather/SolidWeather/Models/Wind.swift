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
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        speed = try container.decode(Double.self, forKey: .speed)
        degrees = try? container.decode(Int.self, forKey: .degrees)
    }
}

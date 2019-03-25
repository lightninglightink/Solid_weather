//
//  Measurements.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/25/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

struct Measurements: Decodable {
    
    var someField: String?
    
    enum CodingKeys: String, CodingKey {
        case someField
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        someField = try? container.decode(String.self, forKey: .someField)
    }
}

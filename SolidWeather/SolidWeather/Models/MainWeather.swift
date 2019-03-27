//
//  MainWeather.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/27/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

struct MainWeather: Decodable {
    
    var name: String?
    var description: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "main"
        case description
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try? container.decode(String.self, forKey: .name)
        description = try? container.decode(String.self, forKey: .description)
    }
}

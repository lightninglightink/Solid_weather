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
}

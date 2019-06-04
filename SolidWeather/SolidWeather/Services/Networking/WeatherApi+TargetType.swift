//
//  WeatherApi+TargetType.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/25/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import Moya

fileprivate let apiKey = "bb55834b34109d37e9770bf7dc802402"

extension WeatherApi: TargetType {
    
    var baseURL: URL {
        return URL(string: "https://api.openweathermap.org/data/2.5")!
    }
    
    var path: String {
        let postfix = "&appid=\(apiKey)"
        var _path = ""
        
        switch self {
        
        case .currentWeather(let location):
            _path = "/weather?q=\(location)"
        case .currentWeekWeather(let location):
            _path = "/forecast?q=\(location)"
        }
        
        return "\(_path)\(postfix)"
    }
    
    var method: Method {
        switch self {
            
        case .currentWeather, .currentWeekWeather:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        
        case .currentWeather, .currentWeekWeather:
            return .requestPlain
        }
    }
    
    var sampleData: Data {
        return """
            {
               "coord":{
                  "lon":-0.13,
                  "lat":51.51
               },
               "weather":[
                  {
                     "id":300,
                     "main":"Drizzle",
                     "description":"light intensity drizzle",
                     "icon":"09d"
                  }
               ],
               "base":"stations",
               "main":{
                  "temp":280.32,
                  "pressure":1012,
                  "humidity":81,
                  "temp_min":279.15,
                  "temp_max":281.15
               },
               "visibility":10000,
               "wind":{
                  "speed":4.1,
                  "deg":80
               },
               "clouds":{
                  "all":90
               },
               "dt":1485789600,
               "sys":{
                  "type":1,
                  "id":5091,
                  "message":0.0103,
                  "country":"GB",
                  "sunrise":1485762037,
                  "sunset":1485794875
               },
               "id":2643743,
               "name":"London",
               "cod":200
            }
            """.utf8Encoded
    }

    var headers: [String : String]? {
        return ["Content-type": "application/json", "Accept": "application/json"]
    }
}

// MARK: - Helpers

private extension String {

    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}

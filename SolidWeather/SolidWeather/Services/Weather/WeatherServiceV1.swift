//
//  WeatherServiceV1.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class WeatherServiceV1: WeatherService {
    
    var networking: NetworkingService
    
    init(networking: NetworkingService) {
        self.networking = networking
    }
    
    func getCurrentWeather(location: String, completion: @escaping (Weather) -> Void) {
        networking.getCurrentWeather(location: location) { (weather) in
            completion(weather)
        }
    }
}

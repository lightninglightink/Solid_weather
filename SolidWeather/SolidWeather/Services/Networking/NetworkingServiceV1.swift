//
//  NetworkingServiceV1.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import Moya
import JSONDecoder_Keypath

class NetworkingServiceV1: NetworkingService {
   
    let weather: MoyaProvider<WeatherApi>
    
    let jsonDecoder = JSONDecoder()
    
    init() {
        self.weather = MoyaProvider<WeatherApi>()
    }
    
    func getCurrentWeather(location: String, completion: @escaping (Weather) -> Void) {
        weather.request(.currentWeather(location: location), completion: { [weak self] (result) in
            guard let self = self else { return }
            guard let response = try? result.get(),
            let value = try? response.map(Weather.self, using: self.jsonDecoder)
            else {
                return
            }
            
            completion(value)
        })
    }
    
//    func getCurrentWeekWeather(location: String) -> [Weather] {
//        return weather.request(.currentWeekWeather(location: location), completion: { (result) in
//            return [Weather()]
//        })
//    }
}

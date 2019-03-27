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
    let weatherEndpointClosure = { (target: WeatherApi) -> Endpoint in
        let url = target.baseURL.absoluteString + target.path
       
        let endpoint = Endpoint(
            url: url,
            sampleResponseClosure: { .networkResponse(200, target.sampleData) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
        
        return endpoint.adding(newHTTPHeaderFields: [:])
    }
    
    let jsonDecoder = JSONDecoder()
    
    init() {
        self.weather = MoyaProvider<WeatherApi>(endpointClosure: weatherEndpointClosure)
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
    
    func getCurrentWeekWeather(location: String, completion: @escaping ([Weather]) -> Void) {
        weather.request(.currentWeather(location: location), completion: { [weak self] (result) in
            guard let self = self else { return }
            guard let response = try? result.get(),
                let value = try? response.map([Weather].self, using: self.jsonDecoder)
                else {
                    return
            }
            
            completion(value)
        })
    }
}

//
//  WeatherService.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

protocol WeatherService: AnyService {
    
    func getCurrentWeather(location: String, completion: @escaping (Weather) -> Void)
    func getCurrentWeekWeather(location: String, completion: @escaping ([Weather]) -> Void)
}

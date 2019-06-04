//
//  Services.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class Services {
    
    static let shared = Services()
    
    private init() {}
    
    // MARK: - Private Services
    
    private lazy var networking: NetworkingService = NetworkingServiceV1()
    
    // MARK: - Private Services
    
    lazy var weather: WeatherService = WeatherServiceV1(networking: networking)
}

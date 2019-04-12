//
//  MainRouter.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class MainRouter: Router {
    
    enum Route {
        case detail(Weather)
    }
    
    func route(to route: Route) {
        switch route {
            
        case .detail(let weather):
            routeDetail(weather: weather)
        }
    }
    
    private func routeDetail(weather: Weather) {
        let vc = Screens.detail(weather: weather)
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}

//
//  MainRouter.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class MainRouter: Router {
    
    enum Route {
        case detail
    }
    
    func route(to route: Route) {
        switch route {
            
        case .detail:
            routeDetail()
        }
    }
    
    private func routeDetail() {
        let vc = Screens.detail()
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}

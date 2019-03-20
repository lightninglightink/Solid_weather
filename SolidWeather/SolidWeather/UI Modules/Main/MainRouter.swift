//
//  MainRouter.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

class MainRouter: Router {
    
    enum Route {
        case main
    }
    
    func route(to route: Route) {
        switch route {
            
        case .main:
            routeMain()
        }
    }
    
    private func routeMain() {
        let vc = Screens.main()
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}

//
//  NavigationViewModel.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import UIKit
import Foundation

class BaseNavigationViewModel<R: Router>: NSObject {
    
    let router: R
    let root: UIViewController
    
    init(root: UIViewController) {
        router = R()
        self.root = root
        super.init()
    }
}

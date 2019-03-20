//
//  ViewModel.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import Foundation

class ViewModel<R: Router>: NSObject {

    let router: R

    override init() {
        router = R()
        super.init()
    }
}

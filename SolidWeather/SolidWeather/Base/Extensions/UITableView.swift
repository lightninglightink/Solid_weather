//
//  UITableView.swift
//  SolidWeather
//
//  Created by Igor Dev on 4/2/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import UIKit

extension UITableView {
    
    func registerCells(_ cells: [AnyClass]) {
        cells.forEach({ register($0.self as AnyClass,
                                 forCellReuseIdentifier: String(describing: $0.self)) })
    }
}

//
//  Screens.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import UIKit

struct Screens {
    
    static func navigation() -> NavigationViewController {
        let model = NavigationViewModel(root: main())
        return NavigationViewController(viewModel: model)
    }
    
    static func main() -> MainViewController {
        let model = MainViewModel()
        return MainViewController(viewModel: model)
    }
    
    static func detail() -> DetailViewController {
        let model = DetailViewModel()
        return DetailViewController(viewModel: model)
    }
}

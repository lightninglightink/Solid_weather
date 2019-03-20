//
//  NavigationViewController.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import UIKit

class BaseNavigationViewController<R: Router, VM: BaseNavigationViewModel<R>>: UINavigationController {
    
    let viewModel: VM
 
    required init?(coder _: NSCoder) {
        fatalError()
    }

    init(viewModel: VM) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        setViewControllers([viewModel.root], animated: false)
        self.viewModel.router.viewController = self
    }
}

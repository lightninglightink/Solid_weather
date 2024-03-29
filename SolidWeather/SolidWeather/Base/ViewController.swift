//
//  ViewController.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import UIKit

class ViewController<R: Router, VM: ViewModel<R>>: UIViewController {
    
    let viewModel: VM

    required init?(coder _: NSCoder) {
        fatalError()
    }

    init(viewModel: VM) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.router.viewController = self
        self.viewModel.updated = onModelUpdates
    }
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        setupConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupTable()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.viewModel.updated = {}
    }
    
    func onModelUpdates() {}
    func setupConstraints() {}
    func setupView() {}
    func setupTable() {}
}

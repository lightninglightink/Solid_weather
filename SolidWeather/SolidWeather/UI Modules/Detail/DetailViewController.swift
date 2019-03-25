//
//  DetailViewController.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/24/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import SnapKit

class DetailViewController: ViewController<DetailRouter, DetailViewModel> {
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .blue
    }
}

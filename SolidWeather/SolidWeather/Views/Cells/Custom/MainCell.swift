//
//  MainCell.swift
//  SolidWeather
//
//  Created by Igor Dev on 4/2/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import SnapKit

class MainCell: TableViewCell {
    
    var cityLabel = UILabel()
    var temperatureLabel = UILabel()
    
    override func setupConstraints() {
        super.setupConstraints()
        
        addSubview(cityLabel)
        cityLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(24)
            make.bottom.equalToSuperview().inset(24)
            make.left.equalToSuperview().offset(16)
        }
        
        addSubview(temperatureLabel)
        temperatureLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(24)
            make.bottom.equalToSuperview().inset(24)
            make.right.equalToSuperview().inset(16)
        }
    }
    
    override func setupCell() {
        super.setupCell()
        
        cityLabel.textColor = .black
        temperatureLabel.textColor = .black
    }
}

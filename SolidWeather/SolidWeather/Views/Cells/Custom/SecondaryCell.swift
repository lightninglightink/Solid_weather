//
//  SecondaryCell.swift
//  SolidWeather
//
//  Created by Igor Dev on 4/11/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import SnapKit

class SecondaryCell: MainCell {
    
    var timeLabel = UILabel()
    
    override func setupConstraints() {
        super.setupConstraints()
        
        addSubview(timeLabel)
        timeLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(cityLabel)
            make.left.equalTo(cityLabel.snp.right).offset(8)
        }
    }
    
    override func setupCell() {
        super.setupCell()
        
        timeLabel.textColor = .black
    }
}

//
//  TableViewCell.swift
//  SolidWeather
//
//  Created by Igor Dev on 4/2/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraints()
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {}
    func setupCell() {}
}

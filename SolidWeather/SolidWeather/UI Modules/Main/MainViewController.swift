//
//  MainViewController.swift
//  SolidWeather
//
//  Created by Igor Dev on 3/16/19.
//  Copyright © 2019 LightinkLTD. All rights reserved.
//

import SnapKit

class MainViewController: ViewController<MainRouter, MainViewModel>, UITableViewDelegate, UITableViewDataSource {
    
    let tableView = UITableView()
    
    override func setupConstraints() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    override func setupTable() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        tableView.registerCells([MainCell.self,
                                SecondaryCell.self])
    }
    
    override func onModelUpdates() {
        super.onModelUpdates()
        tableView.reloadData()
    }
    
    // MARK: - TableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.sections[section].items.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.sections.count
    }
    
    // MARK: - TableViewDelegate
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionModel = viewModel.sections[indexPath.section]
        let cellModel = sectionModel.items[indexPath.row]
        
        return cellForModel(cellModel, tableView: tableView, indexPath: indexPath)
    }
    
    func cellForModel(_ cellModel: MainViewModel.Cell,
                      tableView: UITableView,
                      indexPath: IndexPath) -> UITableViewCell {
        switch cellModel.type {
            
        case .today:
            return makeTodayCell(tableView, indexPath: indexPath, weather: cellModel.weather)
        case .weekly:
            return makeWeeklyCell(tableView, indexPath: indexPath, weather: cellModel.weather)
        }
    }
    
    func makeTodayCell(_ tableView: UITableView, indexPath: IndexPath, weather: Weather) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainCell.identifier,
                                                       for: indexPath) as? MainCell
            else {
                return UITableViewCell()
        }
        
        cell.cityLabel.text = viewModel.city
        cell.temperatureLabel.text = "\(weather.measurements?.temperature ?? 0) F"
        
        return cell
    }
    
    func makeWeeklyCell(_ tableView: UITableView, indexPath: IndexPath, weather: Weather) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SecondaryCell.identifier,
                                                       for: indexPath) as? SecondaryCell
            else {
                return UITableViewCell()
        }
        
        cell.cityLabel.text = viewModel.city
        cell.temperatureLabel.text = "\(weather.measurements?.temperature ?? 0) F"
        cell.timeLabel.text = "(\(weather.timestamp ?? 0))"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewModel.showDetail(at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.sections[section].type.rawValue.capitalized
    }
    
}

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
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .cyan
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    func setupTable() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        tableView.registerCells([MainCell.self])
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainCell.identifier, for: indexPath) as? MainCell else {
            return UITableViewCell()
        }
        
        let sectionModel = viewModel.sections[indexPath.section]
        let cellModel = sectionModel.items[indexPath.row]
        
        switch sectionModel.type {
            
        case .today:
            switch cellModel.type {
                
            case .today(let model):
                cell.cityLabel.text = model.city
                cell.temperatureLabel.text = "\(model.measurements?.temperature ?? 0) F"
            }
        case .week:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewModel.showDetail()
    }
}

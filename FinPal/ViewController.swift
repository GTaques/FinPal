//
//  ViewController.swift
//  FinPal
//
//  Created by Gabriel Taques on 07/06/22.
//

import UIKit

class ViewController: UIViewController, Storyboardable, UITableViewDelegate, UITableViewDataSource {

    weak var coordinator: MainCoordinator?
    var totalBalanceView: TotalBalanceView?
    var addRecordButton: AddRecordButton?
    var statementTableView: StatementTableView?
    
    var records = [100, 200, 300]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        
        createSubviewsComponents()
        addSubviewComponents()
        
        addRecordButton?.addTarget(self, action: #selector(addRecordButtonTapped), for: .touchUpInside)
        
        statementTableView!.delegate = self
        statementTableView!.dataSource = self
    }
    
    func createSubviewsComponents() {
        let screenSize = UIScreen.main.bounds
        self.totalBalanceView = TotalBalanceView(frame: CGRect(x: 0, y: 0, width: screenSize.width - 20, height: screenSize.height * 0.2))
        self.statementTableView = StatementTableView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height * 0.8))
        self.addRecordButton = AddRecordButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
    }
    
    func addSubviewComponents() {
        self.view.addSubview(totalBalanceView!)
        self.view.addSubview(statementTableView!)
        self.view.addSubview(addRecordButton!)
    }
    
    //MARK: Selectors
    @objc
    public func addRecordButtonTapped() {
        coordinator?.manageRecord()
    }
    
    //MARK: TableView Delegate & DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = String(records[indexPath.row])
        return cell
    }

}


//
//  ViewController.swift
//  FinPal
//
//  Created by Gabriel Taques on 07/06/22.
//

import UIKit

class ViewController: UIViewController, Storyboardable, UITableViewDelegate, UITableViewDataSource {

    weak var coordinator: MainCoordinator?
    var button: Clickable?
    var recordsTableView: Viewable?
    
    var records = [100, 200, 300]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .green
        self.button?.frame = self.view.frame
        button?.setupOnScreen(parent: self.view, owner: self)
        button?.addTarget(self, action: #selector(addRecordButtonTapped), for: .touchUpInside)
        recordsTableView?.setupOnScreen(parent: self.view, owner: self)
    }
    
    @objc
    public func addRecordButtonTapped() {
        coordinator?.manageRecord()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        recordsTableView?.layoutSubviews(parent: self.view, owner: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = String(records[indexPath.row])
        return cell
    }
    
}


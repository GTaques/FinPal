//
//  ViewController.swift
//  FinPal
//
//  Created by Gabriel Taques on 07/06/22.
//

import UIKit

class ViewController: UIViewController, Storyboardable {

    weak var coordinator: MainCoordinator?
    var button: Clickable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .green
        self.button = AddRecordButtonView(frame: self.view.frame)
        button.setupOnScreen(parent: self.view, owner: self)
        button.addTarget(self, action: #selector(addRecordButtonTapped), for: .touchUpInside)
    }
    
    @objc
    public func addRecordButtonTapped() {
        coordinator?.manageRecord()
    }
}


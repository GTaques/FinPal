//
//  ViewController.swift
//  FinPal
//
//  Created by Gabriel Taques on 07/06/22.
//

import UIKit

class ViewController: UIViewController {

    var button: Viewable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .green
        button = AddRecordButtonView(frame: self.view.frame)
        button.setup(parent: self.view)
    }
}


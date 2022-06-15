//
//  ManageRecordViewController.swift
//  FinPal
//
//  Created by Gabriel Taques on 07/06/22.
//

import UIKit

class ManageRecordViewController: UIViewController, Storyboardable {

    weak var coordinator: RecordCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.title = "Create"
        self.navigationItem.title = ""
        // Do any additional setup after loading the view.
        let dale = self.navigationController?.tabBarController
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let dale = self.navigationController?.tabBarController
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

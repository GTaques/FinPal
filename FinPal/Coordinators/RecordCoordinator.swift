//
//  RecordCoordinator.swift
//  FinPal
//
//  Created by Gabriel Taques on 08/06/22.
//

import UIKit

class RecordCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(push: Bool) {
        let vc = ManageRecordViewController.instatiate()
        vc.coordinator = self
        if push {
            navigationController.pushViewController(vc, animated: true)
        }
    }
}

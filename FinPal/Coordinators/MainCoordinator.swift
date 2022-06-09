//
//  MainCoordinator.swift
//  FinPal
//
//  Created by Gabriel Taques on 08/06/22.
//

import UIKit

class MainCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instatiate()
        vc.coordinator = self
        
        //Inject Dependencies
        vc.button = AddRecordButtonView()
        vc.recordsTableView = StatementTableView()
        
        navigationController.pushViewController(vc, animated: false)
    }
    
    func manageRecord() {
//        navigationController.delegate = self
        let vc = ManageRecordViewController.instatiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
//    func childDidFinish(_ child: Coordinator?) {
//        for (index, coordinator) in childCoordinators.enumerated() {
//            if coordinator === child {
//                childCoordinators.remove(at: index)
//                break
//            }
//
//        }
//    }
//    
//    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
//        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
//            return
//        }
//        if navigationController.viewControllers.contains(fromViewController) {
//            return
//        }
////        if let buyViewController = fromViewController as? ManageRecordViewController {
////                childDidFinish(buyViewController.coordinator)
////        }
//    }
//
    
}

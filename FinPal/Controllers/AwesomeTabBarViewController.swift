//
//  AwesomeTabBarViewController.swift
//  FinPal
//
//  Created by Gabriel Taques on 15/06/22.
//

import UIKit

class AwesomeTabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: ViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: ManageRecordViewController(), title: NSLocalizedString("Create", comment: ""), image: UIImage(systemName: "plus")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!)
        ]
    }
    
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//
//        present(ManageRecordViewController(), animated: true, completion: nil)
//        return true
//    }
//
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if tabBar.items?.firstIndex(of: item) == 1 {
            self.viewControllers![0].modalPresentationStyle = .overFullScreen
            self.viewControllers![0].present(ManageRecordViewController(), animated: true, completion: nil)
//            self.present(self.viewControllers![0], animated: true, completion: nil)
        }
    }
}

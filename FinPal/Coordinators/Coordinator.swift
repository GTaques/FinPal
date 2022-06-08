//
//  Coordinator.swift
//  FinPal
//
//  Created by Gabriel Taques on 08/06/22.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

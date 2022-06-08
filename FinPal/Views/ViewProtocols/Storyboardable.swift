//
//  Storyboardable.swift
//  FinPal
//
//  Created by Gabriel Taques on 08/06/22.
//

import UIKit

protocol Storyboardable {
    static func instatiate() -> Self
}

extension Storyboardable where Self: UIViewController {
    static func instatiate() -> Self {
        //Pega o nome formatado como: "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}

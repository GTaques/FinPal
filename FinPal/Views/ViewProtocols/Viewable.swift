//
//  Viewable.swift
//  FinPal
//
//  Created by Gabriel Taques on 08/06/22.
//

import UIKit


protocol Viewable {
    func setupOnScreen(parent view: UIView, owner vc: UIViewController)
}

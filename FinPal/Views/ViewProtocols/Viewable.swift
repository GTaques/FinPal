//
//  Viewable.swift
//  FinPal
//
//  Created by Gabriel Taques on 08/06/22.
//

import UIKit


protocol Viewable: UIView {
    func setupOnScreen(parent view: UIView, owner vc: UIViewController)
    func layoutSubviews(parent view: UIView, owner vc: UIViewController)
    func setupConstraintsRelativeToParent(parent view: UIView, owner vc: UIViewController)
}

extension Viewable {
    func setupConstraintsRelativeToParent(parent view: UIView, owner vc: UIViewController) {}
}

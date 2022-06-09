//
//  AddRecordButtonView.swift
//  FinPal
//
//  Created by Gabriel Taques on 07/06/22.
//

import UIKit

class AddRecordButtonView: UIButton, Clickable {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupOnScreen(parent view: UIView, owner vc: UIViewController) {
        self.backgroundColor = .systemBackground
        self.setTitle("Click Me!", for: .normal)
        self.setTitleColor(.systemBlue, for: .normal)
        view.addSubview(self)
    }
    
    func layoutSubviews(parent view: UIView, owner vc: UIViewController) {}
}

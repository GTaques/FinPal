//
//  AddRecordButtonView.swift
//  FinPal
//
//  Created by Gabriel Taques on 07/06/22.
//

import UIKit

class AddRecordButton: UIButton, Clickable {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBackground
        self.setTitle("Click Me!", for: .normal)
        self.setTitleColor(.systemBlue, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupOnScreen(parent view: UIView, owner vc: UIViewController) {
        
        view.addSubview(self)
    }
    
    func layoutSubviews(parent view: UIView, owner vc: UIViewController) {}
}

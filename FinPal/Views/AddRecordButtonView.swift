//
//  AddRecordButtonView.swift
//  FinPal
//
//  Created by Gabriel Taques on 07/06/22.
//

import UIKit

class AddRecordButtonView: UIView, Clickable {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(parent view: UIView) {
        let button: UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.backgroundColor = .systemBackground
        button.setTitle("Click Me!", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc
    func buttonTapped() {
         
    }
    
    
}

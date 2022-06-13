//
//  AvatarImageView.swift
//  FinPal
//
//  Created by Gabriel Taques on 10/06/22.
//

import UIKit

class AvatarImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.masksToBounds = true
        self.layer.borderWidth = 4
        self.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}

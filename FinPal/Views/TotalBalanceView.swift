//
//  TotalBalanceView.swift
//  FinPal
//
//  Created by Gabriel Taques on 09/06/22.
//

import UIKit

class TotalBalanceView: UIView {
    
    let screenSize = UIScreen.main.bounds.size
    
    var avatarImageView: AvatarImageView!
    var helloLabel: UILabel!
    var nameLabel: UILabel!
    var yourBalanceLabel: UILabel!
    var amountBalanceLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 15
        
        yourBalanceLabel.text = "Your balance"
        amountBalanceLabel.text = "1000"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createSubviewComponents() {
        avatarImageView = AvatarImageView(frame: CGRect(x: 15, y: 15, width: 50, height: 50))
        helloLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        yourBalanceLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        amountBalanceLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
    }
    
    func addSubviewComponents() {
        self.addSubview(helloLabel)
        self.addSubview(nameLabel)
        self.addSubview(yourBalanceLabel)
        self.addSubview(amountBalanceLabel)
        self.addSubview(avatarImageView)
    }
}

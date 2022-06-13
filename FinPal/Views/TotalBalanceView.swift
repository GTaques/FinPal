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
        createSubviewComponents()
        addSubviewComponents()
        yourBalanceLabel.text = "Your balance"
        amountBalanceLabel.text = "1000"
        
        setupAvatarConstraints()
        setupHelloConstraints()
        setupNameConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createSubviewComponents() {
        avatarImageView = AvatarImageView(frame: CGRect(x: 15, y: 0, width: 50, height: 50))
        helloLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        helloLabel.text = "Hello, "
        nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        nameLabel.text = "Gabriel"
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
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
    
    func setupAvatarConstraints() {
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        let verticalConstraint = self.avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15)
        let horizontalConstraint = self.avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15)
        let heightConstraint = self.avatarImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25)
        let widthConstraint = self.avatarImageView.widthAnchor.constraint(equalTo: self.avatarImageView.heightAnchor, multiplier: 1)
        NSLayoutConstraint.activate([verticalConstraint, horizontalConstraint, heightConstraint, widthConstraint])
    }
    
    func setupHelloConstraints() {
        self.helloLabel.translatesAutoresizingMaskIntoConstraints = false
        let verticalConstraint = self.helloLabel.bottomAnchor.constraint(equalTo: self.avatarImageView.centerYAnchor, constant: 0)
        let horizontalConstraint = self.helloLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 10)
        let heightConstraint = self.helloLabel.heightAnchor.constraint(equalTo: self.avatarImageView.heightAnchor, multiplier: 0.4)
        let widthConstraint = self.helloLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5)
        NSLayoutConstraint.activate([verticalConstraint, horizontalConstraint, heightConstraint, widthConstraint])
    }
    
    func setupNameConstraints() {
        self.nameLabel.translatesAutoresizingMaskIntoConstraints = false
        let verticalConstraint = self.nameLabel.topAnchor.constraint(equalTo: self.helloLabel.bottomAnchor)
        let horizontalConstraint = self.nameLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 10)
        let heightConstraint = self.nameLabel.heightAnchor.constraint(equalTo: self.avatarImageView.heightAnchor, multiplier: 0.5)
        let widthConstraint = self.nameLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5)
        
        NSLayoutConstraint.activate([verticalConstraint, horizontalConstraint, heightConstraint, widthConstraint])
    }
}

//
//  TotalBalanceView.swift
//  FinPal
//
//  Created by Gabriel Taques on 09/06/22.
//

import UIKit

class TotalBalanceView: UIView, Viewable {
    
    var yourBalanceLabel: UILabel!
    var amountBalanceLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        yourBalanceLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        amountBalanceLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        yourBalanceLabel.text = "Your balance"
        amountBalanceLabel.text = "1000"
        self.addSubview(yourBalanceLabel)
        self.addSubview(amountBalanceLabel)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = self.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0)
        NSLayoutConstraint.activate([horizontalConstraint])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupOnScreen(parent view: UIView, owner vc: UIViewController) {
        self.backgroundColor = .red
        
        view.addSubview(self)
    }
    
    func layoutSubviews(parent view: UIView, owner vc: UIViewController) {
        self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 20, height: 200)
    }
    
    func setupConstraintsRelativeToParent(parent view: UIView, owner vc: UIViewController) {
        let horizontalConstraint = self.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0)
        self.addConstraints([horizontalConstraint])
    }
    


}

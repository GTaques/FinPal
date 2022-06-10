//
//  TotalBalanceView.swift
//  FinPal
//
//  Created by Gabriel Taques on 09/06/22.
//

import UIKit

class TotalBalanceView: UIView {
    
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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

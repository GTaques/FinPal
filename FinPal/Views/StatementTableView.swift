//
//  StatementTableView.swift
//  FinPal
//
//  Created by Gabriel Taques on 09/06/22.
//

import UIKit

class StatementTableView: UITableView, Viewable {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = self.bounds
    }
    
    func setupOnScreen(parent view: UIView, owner vc: UIViewController) {
        view.addSubview(self)
        self.delegate = vc as? UITableViewDelegate
        self.dataSource = vc as? UITableViewDataSource
    }
    
    func layoutSubviews(parent view: UIView, owner vc: UIViewController) {
        self.frame = view.frame
    }
    
    

}

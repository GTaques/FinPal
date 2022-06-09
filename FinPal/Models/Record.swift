//
//  Record.swift
//  FinPal
//
//  Created by Gabriel Taques on 09/06/22.
//

import UIKit

enum Category {
    case Leisure
    case Transport
    case Food
}

struct Record {
    var isCredit: Bool
    var value: Double
    var category: Category
}

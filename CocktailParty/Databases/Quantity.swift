//
//  Quantity.swift
//  CocktailParty
//
//  Created by wknar on 2017/11/09.
//  Copyright © 2017 wknar. All rights reserved.
//

import Foundation
import RealmSwift

class Quantity: Object {
    @objc dynamic var name   = ""
    @objc dynamic var amount = 0.0

    convenience init(name: String, amount: Double = 0.0) {
        self.init()
        self.name = name
        self.amount = amount
    }
}

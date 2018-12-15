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
    @objc dynamic var id     = 0
    @objc dynamic var name   = ""
    @objc dynamic var amount = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }
}

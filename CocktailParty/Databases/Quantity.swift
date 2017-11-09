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
    dynamic var id     = 0
    dynamic var name   = ""
    dynamic var amount = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }
}

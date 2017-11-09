//
//  Cocktail.swift
//  CocktailParty
//
//  Created by wknar on 2017/11/09.
//  Copyright © 2017 wknar. All rights reserved.
//

import Foundation
import RealmSwift

class Cocktail: Object {
    dynamic var id       = 0
    dynamic var title    = ""
    dynamic var desc     = ""
    dynamic var rate     = 0
    let content  = List<Quantity>()

    override class func primaryKey() -> String? {
        return "id"
    }
}

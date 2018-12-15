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
    @objc dynamic var id       = 0
    @objc dynamic var title    = ""
    @objc dynamic var desc     = ""
    @objc dynamic var rate     = 0
    let content  = List<Quantity>()

    override class func primaryKey() -> String? {
        return "id"
    }
}

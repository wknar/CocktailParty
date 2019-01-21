//
//  NewRateViewController.swift
//  CocktailParty
//
//  Created by Wakana Ara on 2019/01/05.
//  Copyright © 2019 wknar. All rights reserved.
//

import UIKit
import Cosmos

class NewRateViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var starView: CosmosView!
    @IBOutlet var resistButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Post 4/4"
    }
}

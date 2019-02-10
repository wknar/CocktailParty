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

    private var cocktail: Cocktail!

    func setup(cocktail: Cocktail) {
        self.cocktail = cocktail
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Post 4/4"

        resistButton.addTarget(self, action: #selector(self.resistButtonTapped), for: .touchUpInside)
    }

    @objc func resistButtonTapped() {
        cocktail.rate = Int(self.starView.rating)
    }
}

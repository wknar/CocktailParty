//
//  NewRateViewController.swift
//  CocktailParty
//
//  Created by Wakana Ara on 2019/01/05.
//  Copyright © 2019 wknar. All rights reserved.
//

import UIKit
import Cosmos
import RealmSwift

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
        saveCocktail()
    }

    func saveCocktail() {
        let realm = try! Realm()
        // GET number of cocktail list
        let cocktailNum = realm.objects(Cocktail.self).map{$0.id}.max() ?? 0
        cocktail.id = cocktailNum + 1
        try! realm.write() {
            realm.add(cocktail)
        }

        // TODO: show alert after complete save
        dismiss(animated: true, completion: nil)
    }
}

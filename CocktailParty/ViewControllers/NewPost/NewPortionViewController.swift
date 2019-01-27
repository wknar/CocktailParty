//
//  NewPortionViewController.swift
//  CocktailParty
//
//  Created by Wakana Ara on 2019/01/05.
//  Copyright © 2019 wknar. All rights reserved.
//

import UIKit
import RealmSwift

class NewPortionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var portionTableView: UITableView!
    @IBOutlet var nextButton: UIButton!

    private var cocktail: Cocktail!

    func setup(cocktail: Cocktail) {
        self.cocktail = cocktail
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Post 2/4"

        portionTableView.delegate = self

        nextButton.addTarget(self, action: #selector(self.nextButtonTapped), for: .touchUpInside)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       return UITableViewCell()
    }

    @objc func nextButtonTapped() {
        let quantity = Quantity()
        quantity.name = ""
        quantity.amount = 0.0
        cocktail.content = List([Quantity(name: "opo"), Quantity(name: "hoh")])
    }

}

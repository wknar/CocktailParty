//
//  NewDescViewController.swift
//  CocktailParty
//
//  Created by Wakana Ara on 2019/01/05.
//  Copyright © 2019 wknar. All rights reserved.
//

import UIKit

class NewDescViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descTextView: UITextView!
    @IBOutlet var nextButton: UIButton!

    private var cocktail: Cocktail!

    func setup(cocktail: Cocktail) {
        self.cocktail = cocktail
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Post 3/4"

        nextButton.addTarget(self, action: #selector(self.nextButtonTapped), for: .touchUpInside)
    }

    @objc func nextButtonTapped() {
        if descTextView.text.isEmpty {
            // TODO: show error message
        } else {
            cocktail.desc = descTextView.text
            let vc = UIStoryboard(name: "NewRate", bundle: nil).instantiateInitialViewController() as! NewRateViewController
            vc.setup(cocktail: cocktail)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

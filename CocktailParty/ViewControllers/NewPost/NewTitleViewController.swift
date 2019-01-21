//
//  NewTitleViewController.swift
//  CocktailParty
//
//  Created by Wakana Ara on 2019/01/01.
//  Copyright © 2019 wknar. All rights reserved.
//

import UIKit

class NewTitleViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var nextButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Post 1/4"
    }

}

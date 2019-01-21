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

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Post 3/4"
    }
}

//
//  NewCocktailViewController.swift
//  CocktailParty
//
//  Created by wknar on 2017/11/08.
//  Copyright © 2017 wknar. All rights reserved.
//

import Foundation
import UIKit

class NewCocktailViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Cocktail"
        view.backgroundColor = .white
    }

    @IBAction func closeWindow() {
        // TODO: ask discard editing
        dismiss(animated: true, completion: nil)
    }

}

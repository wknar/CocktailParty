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

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Cocktail"
        view.backgroundColor = .blue

        // cancel button
        let cancelButton = UIBarButtonItem.init(title: "Cancel", style: .plain, target: self, action: #selector(closeWindow))
        navigationItem.leftBarButtonItem = cancelButton
    }

    func closeWindow() {
        // TODO: ask discard editing
        dismiss(animated: true, completion: nil)
    }

}

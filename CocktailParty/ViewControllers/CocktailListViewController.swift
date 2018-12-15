//
//  CocktailListViewController.swift
//  CocktailParty
//
//  Created by アラ 若菜 on 2017/05/01.
//  Copyright © 2017 wknar. All rights reserved.
//

import UIKit

class CocktailListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My Cocktail List"
        view.backgroundColor = .lightGray

        let newItemButton = UIBarButtonItem(title: "New", style: .plain, target: self, action: #selector(openNewCocktail))
        navigationItem.rightBarButtonItem = newItemButton
    }

    @objc func openNewCocktail() {
        let vc = UIStoryboard(name: "NewCocktail", bundle: nil).instantiateInitialViewController() as! NewCocktailViewController
        self.present(vc, animated: true, completion: nil)
    }
}


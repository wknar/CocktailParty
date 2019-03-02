//
//  CocktailListViewController.swift
//  CocktailParty
//
//  Created by アラ 若菜 on 2017/05/01.
//  Copyright © 2017 wknar. All rights reserved.
//

import UIKit
import RealmSwift

class CocktailListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!

    private var cocktails = [Cocktail]()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Tab.coctailList.rawValue
        view.backgroundColor = .lightGray

        tableView.delegate = self

        let newItemButton = UIBarButtonItem(title: "New", style: .plain, target: self, action: #selector(openNewCocktail))
        navigationItem.rightBarButtonItem = newItemButton

        getCocktails()
    }

    @objc func openNewCocktail() {
        let vc = UIStoryboard(name: "NewTitle", bundle: nil).instantiateInitialViewController() as! NewTitleViewController
        self.present(UINavigationController(rootViewController: vc), animated: true, completion: nil)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    func getCocktails() {
        let realm = try! Realm()
        cocktails = realm.objects(Cocktail.self).map{$0}
    }

}


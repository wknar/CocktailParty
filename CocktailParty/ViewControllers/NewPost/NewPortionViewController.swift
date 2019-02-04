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

    enum Section: Int, CaseIterable {
        case portions
        case new
    }

    @IBOutlet var portionTableView: UITableView!
    @IBOutlet var nextButton: UIButton!

    private var cocktail: Cocktail!
    private var quantities = [Quantity]()

    func setup(cocktail: Cocktail) {
        self.cocktail = cocktail
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Post 2/4"

        portionTableView.delegate = self
        portionTableView.dataSource = self
        portionTableView.tableFooterView = UIView()

        nextButton.addTarget(self, action: #selector(self.nextButtonTapped), for: .touchUpInside)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return Section.allCases.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let sec = Section(rawValue: section) else {
            return 0
        }
        switch sec {
        case .portions:
            return quantities.count
        case .new:
            return 1
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = Section(rawValue: indexPath.section) else {
            return UITableViewCell()
        }
        switch section {
        case .portions:
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewPortionName", for: indexPath) as! NewPortionNameCell
            cell.setup(name: quantities[indexPath.row].name)
            return cell
        case .new:
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddNewPortion", for: indexPath) as! AddNewPortionCell
            return cell
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let section = Section(rawValue: indexPath.section) else {
            return
        }
        if section == .new {
            showTextField()
        }

    }

    func showTextField() {
        let alert = UIAlertController(title: "Add new name", message: "", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (textField) -> Void in
            textField.placeholder = "Water"
        })
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { a -> Void in
            if let textField = alert.textFields?.first {
                let quantity = Quantity(name: textField.text!)
                self.quantities.append(quantity)
                self.portionTableView.reloadData()
            }
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)

        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }

    @objc func nextButtonTapped() {
        let quantity = Quantity()
        quantity.name = ""
        quantity.amount = 0.0
        cocktail.content = List([Quantity(name: "opo"), Quantity(name: "hoh")])
    }

}

class NewPortionNameCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!

    func setup(name: String) {
        nameLabel.text = name
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

}

class AddNewPortionCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

}

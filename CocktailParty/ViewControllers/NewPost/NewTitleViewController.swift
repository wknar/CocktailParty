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

    private var cocktail: Cocktail!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Post 1/4"
        let closeButton = UIBarButtonItem.init(title: "Close", style: .plain, target: self, action: #selector(self.close))
        navigationItem.leftBarButtonItem = closeButton

        cocktail = Cocktail()

        nextButton.addTarget(self, action: #selector(self.nextButtonTapped), for: .touchUpInside)
    }

    @objc func nextButtonTapped() {
        if setTitle() {
            let vc = UIStoryboard(name: "NewPortion", bundle: nil).instantiateInitialViewController() as! NewPortionViewController
            vc.setup(cocktail: cocktail)
            navigationController?.pushViewController(vc, animated: true)
        }
    }

    @objc func close() {
        // TODO: ask discard if cocktail instance have content
        dismiss(animated: true, completion: nil)
    }

    func setTitle() -> Bool {
        // TODO: trim spaces(new lines)
        if let text = titleTextField.text, text.isEmpty  {
            // TODO: show error message
            return false
        }
        cocktail.title = titleTextField.text!
        return true
    }

}

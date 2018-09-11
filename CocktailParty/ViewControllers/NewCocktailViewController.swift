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
    @IBOutlet weak var starImageView1: UIImageView!
    @IBOutlet weak var starImageView2: UIImageView!
    @IBOutlet weak var starImageView3: UIImageView!
    @IBOutlet weak var starImageView4: UIImageView!
    @IBOutlet weak var starImageView5: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "New Cocktail"
        view.backgroundColor = .white

        // Add UIGesture to star images
        starImageView1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapStarImage(_:))))
        starImageView2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapStarImage(_:))))
        starImageView3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapStarImage(_:))))
        starImageView4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapStarImage(_:))))
        starImageView5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapStarImage(_:))))

    }

    @IBAction func closeWindow() {
        // TODO: ask discard editing
        dismiss(animated: true, completion: nil)
    }

    func tapStarImage(_ sender: UITapGestureRecognizer) {
        // TODO: 一度全部オフにして、1番からつけたれたタグ番号までを入れる
        starImageView1.image = UIImage(named: "StarOffhh")
        if let view = sender.view {
            print("*** tapped tag", view.tag)
        }
    }

}

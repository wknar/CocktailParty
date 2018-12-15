//
//  OriginalTabBarController.swift
//  CocktailParty
//
//  Created by wknar on 2017/11/07.
//  Copyright © 2017 wknar. All rights reserved.
//

import UIKit

class OriginalTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // selected color
        let font = UIFont.systemFont(ofSize: 10)
        let selectedColor = UIColor.green
        let selectedAttributes = [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: selectedColor]
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: .selected)
        UITabBar.appearance().tintColor = selectedColor

        // unselected color
        let normalAttributes = [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: UIColor.black]
        UITabBarItem.appearance().setTitleTextAttributes(normalAttributes, for: .normal)

        // icon color
        var assets: Array<String> = ["first.pdf", "second.pdf"]
        for (idx, item) in self.tabBar.items!.enumerated() {
            item.image = UIImage(named: assets[idx])?.withRenderingMode(.alwaysOriginal)
        }
    }

}

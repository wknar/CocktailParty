//
//  OriginalTabBarController.swift
//  CocktailParty
//
//  Created by wknar on 2017/11/07.
//  Copyright © 2017 wknar. All rights reserved.
//

import UIKit

enum Tab: String, CaseIterable {
    case coctailList = "CocktailList"
    case appInfo = "Information"
}

class OriginalTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabTitles = Tab.allCases
        setViewControllers(tabTitles.compactMap { UIStoryboard(name: $0.rawValue, bundle: nil).instantiateInitialViewController() }, animated: false)

        // selected color
        let font = UIFont.systemFont(ofSize: 10)
        let selectedColor = UIColor.orange
        let selectedAttributes = [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: selectedColor]
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: .selected)
        UITabBar.appearance().tintColor = selectedColor

        // unselected color
        let normalAttributes = [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: UIColor.gray]
        UITabBarItem.appearance().setTitleTextAttributes(normalAttributes, for: .normal)


        // icon color
        var assets: Array<String> = ["first.pdf", "second.pdf"]
        for (idx, item) in self.tabBar.items!.enumerated() {
            item.image = UIImage(named: assets[idx])?.withRenderingMode(.alwaysOriginal)
            item.title = Tab.allCases[idx].rawValue
        }
    }

}

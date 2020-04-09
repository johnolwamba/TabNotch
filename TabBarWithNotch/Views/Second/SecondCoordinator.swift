//
//  SecondCoordinator.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 09/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

class SecondCoordinator {
    private var navigationController: UINavigationController?
    
    func secondViewController() -> UIViewController {
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem("Second",
                                                       "second",
                                                       "seconc")
        navigationController = UINavigationController(rootViewController: secondViewController)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.view.backgroundColor = .white
        return navigationController ?? UIViewController()
    }
}

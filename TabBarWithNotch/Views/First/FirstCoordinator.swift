//
//  FirstCoordinator.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 09/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

class FirstCoordinator {
    private var navigationController: UINavigationController?
    
    func firstViewController() -> UIViewController {
        let firstViewController = FirstViewController()
        firstViewController.tabBarItem = UITabBarItem("First",
                                                       "first",
                                                       "first")
        navigationController = UINavigationController(rootViewController: firstViewController)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.view.backgroundColor = .white
        return navigationController ?? UIViewController()
    }
}

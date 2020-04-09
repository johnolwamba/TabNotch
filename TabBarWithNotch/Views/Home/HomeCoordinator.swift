//
//  HomeCoordinator.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 09/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

class HomeCoordinator {
    private var navigationController: UINavigationController
    private var homeVC: HomeViewController!
    
    init() {
        navigationController = UINavigationController()
    }
    
    func homeViewController() -> UIViewController {
           homeVC = HomeViewController()
           homeVC.tabBarItem = UITabBarItem("",
                                            "home" ,
                                            "home", true)
           navigationController = UINavigationController(rootViewController: homeVC)
           navigationController.navigationBar.isTranslucent = false
           navigationController.navigationBar.isHidden = true
           navigationController.view.backgroundColor = .white
           return navigationController
       }
}

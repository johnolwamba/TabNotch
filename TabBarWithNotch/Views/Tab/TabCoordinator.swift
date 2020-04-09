//
//  TabCoordinator.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 09/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

class TabBarCoordinator {
    private let window: UIWindow
    private var tabController: ViewController?
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start() {
        tabController = ViewController()
        tabController?.viewControllers = tabBarControllers()
        tabController?.selectedIndex = 1
        window.rootViewController = tabController
        window.makeKeyAndVisible()
    }
    
    func tabBarControllers() -> [UIViewController] {
        let firstVC = FirstCoordinator().firstViewController()
        let homeVC = HomeCoordinator().homeViewController()
        let secondVC = SecondCoordinator().secondViewController()
        return [firstVC, homeVC, secondVC]
    }
}

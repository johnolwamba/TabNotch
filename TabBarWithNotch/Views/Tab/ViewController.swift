//
//  ViewController.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 08/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    // MARK: Variables
    private var backgroundView: TabBarBackgroundView?
    
    // MARK: Initializers
    init() {
        super.init(nibName: "ViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Private methods
    private func configureViewController() {
        configureTabBar()
        
        self.backgroundView?.removeFromSuperview()
        backgroundView = TabBarBackgroundView(frame: tabBar.frame)
        view.addSubview(backgroundView!)
        backgroundView?.configureView()
        view.bringSubviewToFront(tabBar)
        view.layoutIfNeeded()
    }
    
    private func configureTabBar() {
        tabBar.barStyle = .black
        tabBar.barTintColor = .white
        tabBar.unselectedItemTintColor = .gray
        tabBar.isTranslucent = false
    }
    
    func hideLayer() {
        if let backView = backgroundView {
            view.bringSubviewToFront(backView)
            backgroundView?.removeFromSuperview()
            backgroundView = nil
        }
    }
    
    func showLayer() {
        configureViewController()
    }
}



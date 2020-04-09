//
//  HomeViewController.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 08/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           (tabBarController as! ViewController).showLayer()
       }

}

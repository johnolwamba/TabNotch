//
//  UITabBar+Ex.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 08/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

extension UITabBarItem {
    convenience init(_ title: String, _ imageName: String, _ selectedImageName: String, _ isCentral: Bool = false) {
        self.init(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName))
        if isCentral {
            self.imageInsets = UIEdgeInsets(top: -10, left: 0, bottom: 10, right: 0)
        }
    }
}

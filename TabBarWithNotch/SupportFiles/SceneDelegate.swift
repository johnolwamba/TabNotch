//
//  SceneDelegate.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 08/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        //force unwrap for demo only
        TabBarCoordinator(window!).start()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
       
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
       
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
      
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
      
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
      
    }
    
    
}


//
//  SceneDelegate.swift
//  FirstApp
//
//  Created by cho on 12/26/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let tabbar = UITabBarController()
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let newHotVC = UINavigationController(rootViewController: NewHotViewController())
        let storedVC = UINavigationController(rootViewController: StoredViewController())

        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        newHotVC.tabBarItem = UITabBarItem(title: "New & Hot", image: UIImage(systemName: "star.fill"), tag: 1)
        storedVC.tabBarItem = UITabBarItem(title: "저장", image: UIImage(systemName: "pencil"), tag: 2)
        
        tabbar.tabBar.tintColor = .white
        
        tabbar.viewControllers = [homeVC, newHotVC, storedVC]
        
        window = UIWindow(windowScene: scene)
        
        window?.rootViewController = tabbar
        
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


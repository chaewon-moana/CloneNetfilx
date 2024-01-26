//
//  TabBarViewController.swift
//  FirstApp
//
//  Created by cho on 1/26/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        tabBar.tintColor = .white
        tabBar.backgroundColor = .gray
        addVC()
    }
    
    
    func addVC() {
        let homeVC = HomeViewController()
        homeVC.view.backgroundColor = .red
        homeVC.title = "Home"
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        
        let newHotVC = NewHotViewController()
        newHotVC.view.backgroundColor = .yellow
        newHotVC.title = "NewHot"
        newHotVC.tabBarItem = UITabBarItem(title: "New & Hot", image: UIImage(systemName: "star.fill"), tag: 1)
        
        let storedVC = StoredViewController()
        storedVC.view.backgroundColor = .yellow
        storedVC.title = "저장한 컨텐츠 목록"
        storedVC.tabBarItem = UITabBarItem(title: "저장", image: UIImage(systemName: "pencil"), tag: 2)
        
        self.viewControllers = [homeVC, newHotVC, storedVC]
        
        
    }
}

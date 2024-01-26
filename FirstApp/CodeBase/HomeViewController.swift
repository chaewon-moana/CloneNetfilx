//
//  MainViewController.swift
//  FirstApp
//
//  Created by cho on 1/26/24.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let mainImage = UIImageView()
    let categoryLabel = UILabel()
    let playButton = UIButton()
    let myListButton = UIButton()
    
    let hotContentLabel = UILabel()
    let tableView = UITableView()
    
    let userManager = UserDefaultsManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = userManager.name
        
        setAddView()
        setAttribute()
        setLayout()
    }
    
    func setAddView() {
        view.addSubview(mainImage)
        view.addSubview(categoryLabel)
        view.addSubview(playButton)
        view.addSubview(myListButton)
        view.addSubview(hotContentLabel)
        view.addSubview(tableView)
    }
    
    func setAttribute() {
        
    }
    
    func setLayout() {
        
    }

}



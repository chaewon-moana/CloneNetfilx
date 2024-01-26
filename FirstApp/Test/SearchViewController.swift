//
//  SearchViewController.swift
//  FirstApp
//
//  Created by cho on 12/27/23.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var mainTextField: UITextField!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var mainButton: UIButton!
    
    //화면이 떠 있는 동안은 number 정해짐
    let number: Int = .random(in: 1...100)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "몰라유"

    }

    @IBAction func mainButtonClicked(_ sender: UIButton) {
        
        mainLabel.text = "\(number)"
        
        //키보드 내리는 기능
        view.endEditing(true)
    }
    
    
    //UITextField Event Did End On Exit
    //키보드 Return Key 클릭 시 키보드 내려감
    @IBAction func keyboardDismiss(_ sender: UITextField) {
        
    }
    
    
    
}

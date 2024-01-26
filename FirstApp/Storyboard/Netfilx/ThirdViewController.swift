//
//  ThirdViewController.swift
//  FirstApp
//
//  Created by cho on 12/27/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var contentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = "'나만의 자동 저장' 기능"
        mainLabel.textColor = .white
        subLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다. 디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요"
        subLabel.textColor = .lightGray
        
        mainImageView.image = UIImage(named: "dummy")
                
        settingButton.layer.cornerRadius = 4
        settingButton.backgroundColor = .green
        settingButton.setTitleColor(.black, for: .normal)
        
        contentButton.setTitleColor(.black, for: .normal)
        contentButton.backgroundColor = .white
        contentButton.layer.cornerRadius = 4
    }
    
    @IBAction func settingButtonTapped(_ sender: UIButton) {
        settingButton.setTitle("설정완료", for: .highlighted)
    }
    
    @IBAction func contentButtonTapped(_ sender: UIButton) {
        contentButton.setTitle("저장되었습니다", for: .highlighted)
    }
}

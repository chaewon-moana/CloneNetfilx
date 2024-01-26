//
//  SecondViewController.swift
//  FirstApp
//
//  Created by cho on 12/27/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton(firstButton, sender: firstButton)

    }
    
    func designButton(_ button: UIButton, sender: UIButton) {
        let tmp : [UIButton] = [firstButton, secondButton, thirdButton]
        button.layer.cornerRadius = 4
        for bt in tmp {
            if bt == sender {
                bt.backgroundColor = .white
                bt.setTitleColor(.black, for: .normal)
            } else {
                bt.backgroundColor = .black
                bt.setTitleColor(.white, for: .normal)
            }
        }
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        
        designButton(firstButton, sender: sender)

        mainLabel.text = "이런! 찾으시는 작품이 없습니다."
        subLabel.text = "다른 영화, 시리즈, 배우, 감독 똑는 장르를 검색해보세요"
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        designButton(secondButton, sender: sender)
        
        mainLabel.text = "인기 콘텐츠가 준비중입니다!"
        subLabel.text = "곧 순위가 공개됩니다 잠시만 기다려주세요"
    }
    
    @IBAction func thirdButtonTapped(_ sender: UIButton) {

        designButton(thirdButton, sender: sender)
        
        mainLabel.text = "TOP 10 시리즈가 집계중입니다"
        subLabel.text = "잠시만 기다려주세요"
    }
    
    
}

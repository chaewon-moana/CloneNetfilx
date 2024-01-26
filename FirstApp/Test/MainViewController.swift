//
//  MainViewController.swift
//  FirstApp
//
//  Created by cho on 12/27/23.
//

import UIKit

class MainViewController: UIViewController {

    //Interface Builder -> storyboard 변수
    @IBOutlet var tvLabel: UILabel!
    @IBOutlet var movieLabel: UILabel!
    
    @IBOutlet var playButton: UIButton!
    
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var lastImageView: UIImageView!
    
    let tmp: [String] = ["밀수", "베테랑", "범죄도시3", "1", "2", "3", "부산행", "서울의봄", "스즈메의문단속"]
    
    //화면이 사용자 눈에 보이기 직전에 실행되는 기능
    //뷰컨트롤러 생명주기
    //변경되지 않는 값, 디자인적 요소들을 미리 setup해줌
    
    var nickname = "마우이"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nickname = "모아나"
        
        mainImageView.image = UIImage(named: "1")
        mainImageView.backgroundColor = UIColor.red
        mainImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        secondImageView.image = UIImage(named: "노량")
        secondImageView.backgroundColor = UIColor.blue
        secondImageView.contentMode = UIView.ContentMode.scaleAspectFit
        
        lastImageView.image = UIImage(named: "아바타")
        lastImageView.backgroundColor = UIColor.brown
        lastImageView.contentMode = UIView.ContentMode.scaleToFill
        
        lastImageView.layer.cornerRadius = 100
        lastImageView.layer.borderWidth = 2
        lastImageView.layer.borderColor = UIColor.red.cgColor
        
        tvLabel.text = "드라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마라마"
        tvLabel.textColor = .yellow
        tvLabel.backgroundColor = .black
        tvLabel.numberOfLines = 2
        tvLabel.font = .boldSystemFont(ofSize: 20)
        tvLabel.textAlignment = .center
        
        playButton.setTitle("플레이", for: .normal)
        playButton.setTitle("날 놔줘!", for: .highlighted)
        playButton.setImage(UIImage(systemName: "star"), for: .normal)
        playButton.setTitleColor(.red, for: .normal)
        playButton.setTitleColor(.blue, for: .highlighted)
        playButton.backgroundColor = .green
        playButton.layer.cornerRadius = 8
        playButton.layer.borderWidth = 2
        playButton.layer.borderColor = UIColor.magenta.cgColor
    }

    @IBAction func playButtonTapped(_ sender: UIButton) {
                
        mainImageView.image = UIImage(named: tmp.randomElement()!)
        secondImageView.image = UIImage(named: tmp.randomElement()!)
        lastImageView.image = UIImage(named: tmp.randomElement()!)
        
    }
    
}

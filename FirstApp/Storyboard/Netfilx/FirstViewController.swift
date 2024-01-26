//
//  FirstViewController.swift
//  FirstApp
//
//  Created by cho on 12/27/23.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var playButton: UIButton!
    
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var thirdImageView: UIImageView!
    
    @IBOutlet var firstImage1: UILabel!
    @IBOutlet var firstImage2: UILabel!
    @IBOutlet var firstImage3: UILabel!
    
    @IBOutlet var secondImage1: UILabel!
    @IBOutlet var secondImage2: UILabel!
    @IBOutlet var secondImage3: UILabel!
    
    @IBOutlet var thirdImage1: UILabel!
    @IBOutlet var thirdImage2: UILabel!
    @IBOutlet var thirdImage3: UILabel!
    
    let movieList = ["1", "2", "3", "4", "5", "극한직업", "노량", "더퍼스트슬램덩크", "도둑들", "명량", "밀수", "범죄도시3", "베테랑", "부산행", "서울의봄", "스즈메의문단속", "신과함께인과연", "신과함께죄와벌", "아바타", "아바타물의길", "알라딘", "암살", "어벤져스엔드게임", "오펜하이머", "왕의남자", "육사오", "콘크리트유토피아", "택시운전사", "해운대"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainImageView.layer.cornerRadius = 14
        mainImageView.layer.borderWidth = 2
        mainImageView.layer.borderColor = UIColor.red.cgColor
        
        playButton.layer.cornerRadius = 6
        firstImageView.layer.cornerRadius = 8
        secondImageView.layer.cornerRadius = 8
        thirdImageView.layer.cornerRadius = 8
        
        firstImage1.textColor = .black
        secondImage1.textColor = .black
        thirdImage1.textColor = .black
        
        randomBool()
    }
    
    func randomImage() {
        let imageList : [UIImageView] = [mainImageView, firstImageView, secondImageView, thirdImageView]
        for image in imageList {
            image.image = UIImage(named: movieList.randomElement()!)
        }
    }
    
    func randomBool() {
        let tagList : [UILabel] = [firstImage1, firstImage2, firstImage3, secondImage1, secondImage2, secondImage3, thirdImage1, thirdImage2, thirdImage3]
        for tag in tagList {
            tag.isHidden = Bool.random()
        }
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        randomImage()
        randomBool()
    }
    
}

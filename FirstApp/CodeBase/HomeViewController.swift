//
//  MainViewController.swift
//  FirstApp
//
//  Created by cho on 1/26/24.
//

import UIKit
import SnapKit

protocol CodeBase {
    func setAddView()
    func setAttribute()
    func setLayout()
}

class HomeViewController: UIViewController, CodeBase {
    
    let backgroundView = UIImageView()
    let mainImage = UIImageView()
    let categoryLabel = UILabel()
    let playButton = UIButton()
    let myListButton = UIButton()
    let hotContentLabel = UILabel()
    
    
    
    let userManager = UserDefaultsManager.shared
    let dataManager = DataManager.self
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = userManager.name
        
        setAddView()
        setAttribute()
        setLayout()
    }
    
    func setAddView() {
        view.addSubview(backgroundView)
        view.addSubview(mainImage)
        view.addSubview(categoryLabel)
        view.addSubview(playButton)
        view.addSubview(myListButton)
        view.addSubview(hotContentLabel)
    }
    
    func setAttribute() {
        backgroundView.image = .background
        backgroundView.contentMode = .scaleAspectFill
        
        mainImage.image = dataManager.movieList.randomElement()!
        mainImage.contentMode = .scaleAspectFill
        mainImage.layer.cornerRadius = 12
        mainImage.clipsToBounds = true
        
        categoryLabel.text = "냥냥냥냥냥냥냥"
        categoryLabel.font = .boldSystemFont(ofSize: 20)
        categoryLabel.textColor = .white
        categoryLabel.textAlignment = .center
        
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playButton.setTitle(" 재생", for: .normal)
        playButton.setTitleColor(.black, for: .normal)
        playButton.tintColor = .black
        playButton.backgroundColor = .white
        playButton.layer.cornerRadius = 8
        
        myListButton.setImage(UIImage(systemName: "plus"), for: .normal)
        myListButton.setTitle(" 내가 찜한 리스트", for: .normal)
        myListButton.setTitleColor(.white, for: .normal)
        myListButton.tintColor = .white
        myListButton.backgroundColor = .gray
        myListButton.layer.cornerRadius = 8
        
        hotContentLabel.text = "지금 뜨는 콘텐츠"
        hotContentLabel.textColor = .white
    
    }
    
    func setLayout() {
        backgroundView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(300)
        }
        
        mainImage.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(500)
        }
        
        categoryLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(0)
            make.bottom.equalTo(mainImage.snp.bottom).inset(60)
        }
        
        playButton.snp.makeConstraints { make in
            make.centerX.equalTo(view).offset(-90)
            make.bottom.equalTo(mainImage.snp.bottom).inset(20)
            make.width.equalTo(160)
            make.height.equalTo(35)
        }
        
        myListButton.snp.makeConstraints { make in
            make.centerX.equalTo(view).offset(90)
            make.bottom.equalTo(mainImage.snp.bottom).inset(20)
            make.width.equalTo(160)
            make.height.equalTo(35)
        }
        
        hotContentLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImage.snp.bottom).offset(14)
            make.leading.equalTo(view).offset(14)
        }
        
      
    }

}



#Preview {
    HomeViewController()
}

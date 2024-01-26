//
//  NetFilxViewController.swift
//  FirstApp
//
//  Created by cho on 12/27/23.
//

import UIKit

class NetFilxViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var positionTextField: UITextField!
    @IBOutlet var signupButton: UIButton!
    @IBOutlet var codeTextField: UITextField!
    @IBOutlet var addInfoSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        mainLabel.textColor = .red
        mainLabel.textAlignment = .center
        mainLabel.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        
        setTextFieldAttribute(emailTextField, string: "이메일 주소 또는 전화번호")
        emailTextField.keyboardType = .emailAddress
        
        setTextFieldAttribute(passwordTextField, string: "비밀번호")
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textContentType = .oneTimeCode
       
        setTextFieldAttribute(nicknameTextField, string: "닉네임")
        setTextFieldAttribute(positionTextField, string: "위치")
        setTextFieldAttribute(codeTextField, string: "추천 코드 입력")

        signupButton.backgroundColor = .white
        signupButton.setTitle("회원가입", for: .normal)
        signupButton.setTitleColor(.black, for: .normal)
        signupButton.layer.cornerRadius = 8
        
        addInfoSwitch.onTintColor = .red
        addInfoSwitch.setOn(true, animated: true)
        addInfoSwitch.thumbTintColor = .white
    }
    
    func setTextFieldAttribute(_ textField: UITextField, string: String) {
        textField.backgroundColor = .gray
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.textColor = .white
        textField.attributedPlaceholder = NSAttributedString(
            string: string,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    @IBAction func addInfoSwitchTapped(_ sender: UISwitch) {
        if !sender.isOn {
            nicknameTextField.isHidden = true
            positionTextField.isHidden = true
            codeTextField.isHidden = true
        } else {
            nicknameTextField.isHidden = false
            positionTextField.isHidden = false
            codeTextField.isHidden = false
        }
        
    }
    
}

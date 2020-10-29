//
//  SignUp.swift
//  OnBoarding
//
//  Created by Abhishek on 24/10/20.
//

import UIKit

class SignUp: UIViewController {
    
    @IBOutlet weak var fullNameTextField, emailIdTextField, passwordTextField: UITextField!
    @IBOutlet weak var createAccountButton, googleButton, facebookButton, appleButton,
        loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        fullNameTextField.layer.cornerRadius = 14.0
        fullNameTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        fullNameTextField.layer.masksToBounds = true
        fullNameTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        emailIdTextField.layer.cornerRadius = 14.0
        emailIdTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        emailIdTextField.layer.masksToBounds = true
        emailIdTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        passwordTextField.layer.cornerRadius = 14.0
        passwordTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        passwordTextField.layer.masksToBounds = true
        passwordTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        createAccountButton.layer.cornerRadius = 14.0
        googleButton.layer.cornerRadius = 16.0
        googleButton.layer.borderWidth = 0.2
        facebookButton.layer.cornerRadius = 16.0
        facebookButton.layer.borderWidth = 0.2
        appleButton.layer.cornerRadius = 16.0
        appleButton.layer.borderWidth = 0.2
        
        googleButton.setAttributedTitle(attributedTextWithPrefixImage(attributedImage: UIImage(named: "search")!, attributedText: " Google", buttonBound: googleButton), for: .normal)
        
        facebookButton.setAttributedTitle(attributedTextWithPrefixImage(attributedImage: UIImage(named: "facebook")!, attributedText: " Facebook", buttonBound: facebookButton), for: .normal)
        
        appleButton.setAttributedTitle(attributedTextWithPrefixImage(attributedImage: UIImage(named: "apple_logo")!, attributedText: " Apple", buttonBound: appleButton), for: .normal)
    }
    
    @IBAction func createAcountTapped(){
        navigationController?.pushViewController(EmailVerification(), animated: true)
    }

    @IBAction func loginTapped(){
        navigationController?.pushViewController(Login(), animated: true)
    }
    
    func attributedTextWithPrefixImage(attributedImage: UIImage, attributedText: String, buttonBound: UIButton) -> NSMutableAttributedString{
        let fullString = NSMutableAttributedString(string: "")
        let googleIcon = NSTextAttachment()
        googleIcon.bounds = CGRect(x: 0, y: -2, width: 15, height: 15)
        googleIcon.image = attributedImage
        let gooleIconString = NSAttributedString(attachment: googleIcon)
        fullString.append(gooleIconString)
        fullString.append(NSAttributedString(string: attributedText, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.black]))
        return fullString
    }
}

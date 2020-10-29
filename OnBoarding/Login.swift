//
//  Login.swift
//  OnBoarding
//
//  Created by Abhishek on 23/10/20.
//

import UIKit

class Login: UIViewController {
    
    @IBOutlet weak var mobileNumberTextField, passwordTextField: UITextField!
    @IBOutlet weak var loginButton, forgetPasswordButton, googleButton, facebookButton, appleButton, signUpButton: UIButton!
    
//    let fullString = NSMutableAttributedString(string: "")
//    let googleIcon = NSTextAttachment()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        mobileNumberTextField.layer.cornerRadius = 14.0
        mobileNumberTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        mobileNumberTextField.layer.masksToBounds = true
        mobileNumberTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")  // #F6F8FB
        
        passwordTextField.layer.cornerRadius = 14.0
        passwordTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        passwordTextField.layer.masksToBounds = true
        passwordTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        loginButton.layer.cornerRadius = 14.0
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
    
    @IBAction func signUpTapped(){
        navigationController?.pushViewController(SignUp(), animated: true)
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

extension Login: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == mobileNumberTextField {
            passwordTextField.becomeFirstResponder()
        } else{
            textField.resignFirstResponder()
        }
        return true
    }
}

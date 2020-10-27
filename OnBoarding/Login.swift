//
//  Login.swift
//  OnBoarding
//
//  Created by Abhishek on 23/10/20.
//

import UIKit

class Login: UIViewController {
    
    @IBOutlet weak var mobileNumberTextField, passwordTextField: UITextField!
    @IBOutlet weak var loginButton, forgetPasswordButton, googleButton, facebookButton, linkedinButton, signUpButton: UIButton!

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
        googleButton.layer.cornerRadius = 14.0
        googleButton.layer.borderWidth = 0.5
        facebookButton.layer.cornerRadius = 14.0
        facebookButton.layer.borderWidth = 0.5
        linkedinButton.layer.cornerRadius = 14.0
        linkedinButton.layer.borderWidth = 0.5
        
        let googleIcon = UIImage(named: "search")!
        googleButton.setImage(googleIcon, for: .normal)
        googleButton.imageView?.contentMode = .left
        googleButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        
        let facebookIcon = UIImage(named: "facebook")!
        facebookButton.setImage(facebookIcon, for: .normal)
        facebookButton.imageView?.contentMode = .left
        facebookButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        
        let linkedInIcon = UIImage(named: "linkedin")!
        linkedinButton.setImage(linkedInIcon, for: .normal)
        linkedinButton.imageView?.contentMode = .left
        linkedinButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    }
    
    @IBAction func signUpTapped(){
        navigationController?.pushViewController(SignUp(), animated: true)
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

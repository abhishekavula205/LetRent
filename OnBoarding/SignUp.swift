//
//  SignUp.swift
//  OnBoarding
//
//  Created by Abhishek on 24/10/20.
//

import UIKit

class SignUp: UIViewController {
    
    @IBOutlet weak var fullNameTextField, emailIdTextField, passwordTextField: UITextField!
    @IBOutlet weak var createAccountButton, googleButton, facebookButton, linkedinButton,
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
        googleButton.layer.cornerRadius = 14.0
        googleButton.layer.borderWidth = 0.5
        facebookButton.layer.cornerRadius = 14.0
        facebookButton.layer.borderWidth = 0.5
        linkedinButton.layer.cornerRadius = 14.0
        linkedinButton.layer.borderWidth = 0.5
    }
    
    @IBAction func createAcountTapped(){
        navigationController?.pushViewController(EmailVerification(), animated: true)
    }

    @IBAction func loginTapped(){
        navigationController?.pushViewController(Login(), animated: true)
    }
}

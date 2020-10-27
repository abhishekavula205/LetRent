//
//  EmailVerification.swift
//  OnBoarding
//
//  Created by Abhishek on 24/10/20.
//

import UIKit

class EmailVerification: UIViewController {

    @IBOutlet weak var emailverificationTextField, verificationCodeTextField: UITextField!
    @IBOutlet weak var resendEmailButton, submitButton, verifyLaterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        emailverificationTextField.layer.cornerRadius = 14.0
        emailverificationTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        emailverificationTextField.layer.masksToBounds = true
        emailverificationTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        verificationCodeTextField.layer.cornerRadius = 14.0
        verificationCodeTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        verificationCodeTextField.layer.masksToBounds = true
        verificationCodeTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        submitButton.layer.cornerRadius = 15.0

    }
    
    @IBAction func resendEmailTapped(){
        
    }

    @IBAction func submitTapped(){
        navigationController?.pushViewController(AddPhone(), animated: true)
    }
    
    @IBAction func verifyLaterTapped(){
        navigationController?.pushViewController(Login(), animated: true)
    }
}

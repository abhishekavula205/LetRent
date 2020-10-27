//
//  PhoneVerification.swift
//  OnBoarding
//
//  Created by Abhishek on 24/10/20.
//

import UIKit

class PhoneVerification: UIViewController {

    @IBOutlet weak var countryCodeTextField, addPhoneTextField, verificationCodeTextField: UITextField!
    @IBOutlet weak var resendCodeButton, submitButton, verifyLaterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        countryCodeTextField.layer.cornerRadius = 14.0
        countryCodeTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        countryCodeTextField.layer.masksToBounds = true
        countryCodeTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        addPhoneTextField.layer.cornerRadius = 14.0
        addPhoneTextField.layer.masksToBounds = true
        addPhoneTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        verificationCodeTextField.layer.cornerRadius = 14.0
        verificationCodeTextField.layer.masksToBounds = true
        verificationCodeTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        submitButton.layer.cornerRadius = 14.0
    }
    
    @IBAction func resendCodeTapped(){
        
    }
    
    @IBAction func submitTapped(){
        navigationController?.pushViewController(SelectProfile(), animated: true)
    }
    
    @IBAction func verifyLaterTapped(){
        navigationController?.pushViewController(Login(), animated: true)
    }

}

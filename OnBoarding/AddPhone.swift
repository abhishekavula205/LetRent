//
//  AddPhone.swift
//  OnBoarding
//
//  Created by Abhishek on 24/10/20.
//

import UIKit

class AddPhone: UIViewController {

    @IBOutlet weak var countryCodeTextField, addPhoneTextField: UITextField!
    @IBOutlet weak var addNumberButton, addLaterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        countryCodeTextField.layer.cornerRadius = 14.0
        countryCodeTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        countryCodeTextField.layer.masksToBounds = true
        countryCodeTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        addPhoneTextField.layer.cornerRadius = 14.0
        addPhoneTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        addPhoneTextField.layer.masksToBounds = true
        addPhoneTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        addNumberButton.layer.cornerRadius = 15.0

    }
    
    @IBAction func addNumberTapped(){
        navigationController?.pushViewController(PhoneVerification(), animated: true)
    }

    @IBAction func addLaterTapped(){
        navigationController?.pushViewController(Login(), animated: true)
    }
}

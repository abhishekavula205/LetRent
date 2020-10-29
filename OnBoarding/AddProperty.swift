//
//  AddProperty.swift
//  OnBoarding
//
//  Created by Abhishek on 26/10/20.
//

import UIKit

class AddProperty: UIViewController {
    
    @IBOutlet weak var residentialButton, commercialButton, agricuturalButton, nextButton, skipButton: UIButton!
    @IBOutlet weak var propertyNameTextField, placesTextField, statesTextField, countriesTextField: UITextField!
    var placePickerView, statePickerView, countryPickerView: UIPickerView!
  
    
    let placesArray:[String]? = ["Kozhikode","Munnar","Kochi","Kovalam","Alappuzha"]
    let statesArray:[String]? = ["Andhra", "Karnataka","Tamilnadu"]
    let countriesArray:[String]? = ["India", "Australia","USA"]
    var defaultString: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        placePickerView = UIPickerView()
        statePickerView = UIPickerView()
        countryPickerView = UIPickerView()

        residentialButton.layer.cornerRadius = 14.0
        residentialButton.layer.masksToBounds = true
        
        commercialButton.layer.cornerRadius = 14.0
        commercialButton.layer.masksToBounds = true
        
        agricuturalButton.layer.cornerRadius = 14.0
        agricuturalButton.layer.masksToBounds = true
        
        propertyNameTextField.layer.cornerRadius = 14.0
        propertyNameTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        propertyNameTextField.layer.masksToBounds = true
        propertyNameTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        placesTextField.layer.cornerRadius = 14.0
        placesTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        placesTextField.layer.masksToBounds = true
        placesTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        statesTextField.layer.cornerRadius = 14.0
        statesTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        statesTextField.layer.masksToBounds = true
        statesTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        countriesTextField.layer.cornerRadius = 14.0
        countriesTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        countriesTextField.layer.masksToBounds = true
        countriesTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        placePickerView.delegate     = self
        placePickerView.dataSource   = self
        statePickerView.delegate     = self
        statePickerView.dataSource   = self
        countryPickerView.delegate   = self
        countryPickerView.dataSource = self
        
//        placePickerView.layer.backgroundColor = UIColor.init(hexString: "#F6F8FB").cgColor
//        statePickerView.layer.backgroundColor = UIColor.init(hexString: "#F6F8FB").cgColor
//        countryPickerView.layer.backgroundColor = UIColor.init(hexString: "#F6F8FB").cgColor
        placesTextField.inputView = placePickerView
        statesTextField.inputView = statePickerView
        countriesTextField.inputView = countryPickerView
        
//        setTextFieldImage(textField: placesTextField, uiImage: UIImage.init(named: "down_arrow")!)
//
//        setTextFieldImage(textField: statesTextField, uiImage: UIImage.init(named: "down_arrow")!)
//
//        setTextFieldImage(textField: countriesTextField, uiImage: UIImage.init(named: "down_arrow")!)
        
        nextButton.layer.cornerRadius = 16.0
        
    }
    
//    func setTextFieldImage(textField: UITextField, uiImage: UIImage){
//        textField.rightViewMode = UITextField.ViewMode.always
//        let imageView = UIImageView(frame: CGRect(x: textField.frame.width - 20, y: -20, width: 18, height: 18))
//        imageView.contentMode = .center
//        let image = uiImage
//        imageView.image = image
//        textField.rightView = imageView
//    }
}

extension AddProperty: UIPickerViewDelegate{

}

extension AddProperty: UIPickerViewDataSource{
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let pickerViewTag: Int = pickerView.tag
        switch pickerViewTag {
        case 0:
            return placesArray?.count ?? 0
        case 1:
            return statesArray?.count ?? 0
        case 2:
            return countriesArray?.count ?? 0
        default:
            return 1
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let pickerViewTag: Int = pickerView.tag
        switch pickerViewTag {
        case 0:
            return placesArray?[row] ?? ""
        case 1:
            return statesArray?[row] ?? ""
        case 2:
            return countriesArray?[row] ?? ""
        default:
            return "Default"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let pickerViewTag: Int = pickerView.tag
        switch pickerViewTag {
        case 0:
            placesTextField.text = placesArray?[row]
        case 1:
            statesTextField.text = statesArray?[row]
        case 2:
            countriesTextField.text = countriesArray?[row]
        default:
            defaultString = "Default String"
        }
    }
}

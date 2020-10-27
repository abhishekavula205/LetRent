//
//  AddProperty.swift
//  OnBoarding
//
//  Created by Abhishek on 26/10/20.
//

import UIKit

class AddProperty: UIViewController {
    
    @IBOutlet weak var residentialButton, commercialButton, agricuturalButton, nextButton, skipButton: UIButton!
    @IBOutlet weak var propertyNameTextField: UITextField!
    @IBOutlet weak var placePickerView, statePickerView, countryPickerView: UIPickerView!
    
    let placesArray:[String]? = ["Kozhikode","Munnar","Kochi","Kovalam","Alappuzha"]
    let statesArray:[String]? = ["Andhra", "Karnataka","Tamilnadu"]
    let countriesArray:[String]? = ["India", "Australia","USA"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        residentialButton.layer.cornerRadius = 14.0
        residentialButton.layer.masksToBounds = true
//        residentialButton.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        commercialButton.layer.cornerRadius = 14.0
        commercialButton.layer.masksToBounds = true
        
        agricuturalButton.layer.cornerRadius = 14.0
        agricuturalButton.layer.masksToBounds = true
        
//        let grainIcon = UIImage(named: "grain")!
//        agricuturalButton.setImage(grainIcon, for: .normal)
//        agricuturalButton.imageView?.contentMode = .center
//        agricuturalButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
        
        propertyNameTextField.layer.cornerRadius = 14.0
        propertyNameTextField.layer.borderColor = UIColor.init(hexString: "#F6F8FB").cgColor
        propertyNameTextField.layer.masksToBounds = true
        propertyNameTextField.backgroundColor = UIColor.init(hexString: "#F6F8FB")
        
        placePickerView.delegate     = self
        placePickerView.dataSource   = self
        statePickerView.delegate     = self
        statePickerView.dataSource   = self
        countryPickerView.delegate   = self
        countryPickerView.dataSource = self
        nextButton.layer.cornerRadius = 16.0
        
    }
}

extension AddProperty: UIPickerViewDelegate{

}

extension AddProperty: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView ==  placePickerView{
            return placesArray?.count ?? 0
        } else if pickerView == statePickerView{
            return statesArray?.count ?? 0
        } else{
            return countriesArray?.count ?? 0
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView ==  placePickerView{
            return placesArray?[row] ?? ""
        } else if pickerView == statePickerView{
            return statesArray?[row] ?? ""
        } else{
            return countriesArray?[row] ?? ""
        }
    }
}

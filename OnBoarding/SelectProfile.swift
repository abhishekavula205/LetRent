//
//  SelectProfile.swift
//  OnBoarding
//
//  Created by Abhishek on 26/10/20.
//

import UIKit

class SelectProfile: UIViewController {
    @IBOutlet weak var selectProfileTableView: UITableView!
    @IBOutlet weak var continueButton: UIButton!
    var selectedIndex: Int?
    
    var selectProfileArray: [String]? = ["I am a property owner","I am a tenant","I am a property manager","I am a service provider"]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        selectProfileTableView.register(UINib(nibName: "SelectProfileCell", bundle: nil), forCellReuseIdentifier: "SelectProfileCell")
        selectProfileTableView.delegate = self
        selectProfileTableView.dataSource = self
        selectProfileTableView.separatorStyle = .none
        selectProfileTableView.reloadData()
        
        continueButton.layer.cornerRadius = 16.0
    }

    @IBAction func continueTapped(){
        navigationController?.pushViewController(AddProperty(), animated: true)
    }
}

extension SelectProfile: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedIndex = indexPath.row
        selectProfileTableView.reloadData()
    }
}

extension SelectProfile: UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        selectProfileArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selectProfileCell = tableView.dequeueReusableCell(withIdentifier: "SelectProfileCell", for: indexPath) as! SelectProfileCell
        selectProfileCell.backView.layer.cornerRadius = 16
        selectProfileCell.backView.layer.masksToBounds = true
        selectProfileCell.whichProfile.text = selectProfileArray?[indexPath.row]
        if let selectedIndex = selectedIndex, selectedIndex == indexPath.row {
            selectProfileCell.backView.backgroundColor = .systemOrange
            selectProfileCell.whichProfile.textColor = .white
            selectProfileCell.tickImageView.isHidden = false
        } else{
            selectProfileCell.backView.backgroundColor = UIColor.init(hexString: "#F6F8FB")
            selectProfileCell.whichProfile.textColor = .black
            selectProfileCell.tickImageView.isHidden = true
        }
        return selectProfileCell
    }
}

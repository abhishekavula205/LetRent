//
//  TrackDues.swift
//  OnBoarding
//
//  Created by Abhishek on 23/10/20.
//

import UIKit

class TrackDues: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func getStartedTapped(){
        navigationController?.pushViewController(Login(), animated: true)
    }

}

//
//  QuickPayments.swift
//  OnBoarding
//
//  Created by Abhishek on 23/10/20.
//

import UIKit

class QuickPayments: UIViewController {

    @IBOutlet weak var skipButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        
    }
    @IBAction func skipTapped(){
        navigationController?.pushViewController(TrackDues(), animated: true)
    }
}

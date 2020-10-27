//
//  ViewController.swift
//  OnBoarding
//
//  Created by Abhishek on 23/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var skipButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func skipTapped(){
        navigationController?.pushViewController(QuickPayments(), animated: true)
    }
}

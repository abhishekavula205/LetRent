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
        
        let swipeLeftGesture = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeLeftGesture.direction = .left
        view.addGestureRecognizer(swipeLeftGesture)
        
//        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
//        swipeRightGesture.direction = .right
//        view.addGestureRecognizer(swipeRightGesture)
    }
    
    @IBAction func skipTapped(){
        navigationController?.pushViewController(QuickPayments(), animated: true)
    }
    
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {

        navigationController?.pushViewController(QuickPayments(), animated: true)
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//
//            switch swipeGesture.direction {
//            case .right:
//                print("Swiped right")
//            case .down:
//                print("Swiped down")
//            case .left:
//                print("Swiped left")
//            case .up:
//                print("Swiped up")
//            default:
//                break
//            }
//        }
    }
}

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
        
        let swipeLeftGesture = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeLeftGesture.direction = .left
        view.addGestureRecognizer(swipeLeftGesture)
        
        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeRightGesture.direction = .right
        view.addGestureRecognizer(swipeRightGesture)
        
    }
    @IBAction func skipTapped(){
        navigationController?.pushViewController(TrackDues(), animated: true)
    }
    
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {

        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {

            switch swipeGesture.direction {
            case .left:
                navigationController?.pushViewController(TrackDues(), animated: true)
            case .right:
                navigationController?.popViewController(animated: true)
//            case .up:
//                print("Swiped left")
//            case .down:
//                print("Swiped up")
            default:
                break
            }
        }
    }
}

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
        
        let swipeLeftGesture = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeLeftGesture.direction = .left
        view.addGestureRecognizer(swipeLeftGesture)
        
        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeRightGesture.direction = .right
        view.addGestureRecognizer(swipeRightGesture)
    }
    
    @IBAction func getStartedTapped(){
        navigationController?.pushViewController(Login(), animated: true)
    }

    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {

        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {

            switch swipeGesture.direction {
            case .left:
                navigationController?.pushViewController(Login(), animated: true)
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

//
//  SelectProfileCell.swift
//  OnBoarding
//
//  Created by Abhishek on 26/10/20.
//

import UIKit

class SelectProfileCell: UITableViewCell {
    
    @IBOutlet weak var whichProfile: UILabel!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var tickImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

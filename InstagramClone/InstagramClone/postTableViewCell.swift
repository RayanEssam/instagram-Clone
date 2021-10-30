//
//  postTableViewCell.swift
//  InstagramClone
//
//  Created by Rayan Taj on 30/10/2021.
//

import UIKit

class postTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nameButton: UIButton!
    @IBOutlet weak var imagePost: UIImageView!
    var AccountObj = Account()
//    var sb : UIStoryboard = UIStoryboard()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  PostTableViewCell.swift
//  Insta_Demo_3
//
//  Created by kim jong moon on 31/01/2021.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var fullnameLabel: UILabel!
    
    @IBOutlet var postImageView_Right: UIImageView!
    @IBOutlet var postImageView_Left: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

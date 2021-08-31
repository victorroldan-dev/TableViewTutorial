//
//  UserListCell.swift
//  TableViewTutorial
//
//  Created by Victor Roldan on 28/08/21.
//

import UIKit

class UserListCell: UITableViewCell {
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(_ user : UserModel){
        nameLabel.text = user.userName
        descriptionLabel.text = user.description
        profilePic.image = UIImage(named: user.profilePic)
    }
    
}

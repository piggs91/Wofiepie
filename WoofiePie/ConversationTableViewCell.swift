//
//  ConversationTableViewCell.swift
//  WoofiePie
//
//  Created by Ravi Rathore on 4/29/16.
//  Copyright © 2016 com.banago. All rights reserved.
//

import UIKit

class ConversationTableViewCell: UITableViewCell {
    @IBOutlet weak var userName : UILabel!
    @IBOutlet weak var recentMessage:UILabel!
    @IBOutlet weak var profileImage : UIImageView!
    @IBOutlet weak var lastMessage:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImage.layer.cornerRadius = profileImage.bounds.width / 2
        profileImage.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

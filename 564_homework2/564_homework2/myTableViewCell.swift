//
//  myTableViewCell.swift
//  564_homework2
//
//  Created by Chong Xu on 9/19/19.
//  Copyright © 2019 Chong Xu. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

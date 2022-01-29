//
//  RootTableViewCell.swift
//  IOS_lessons
//
//  Created by MacBook on 29.01.2022.
//

import UIKit

class RootTableViewCell: UITableViewCell {
    @IBOutlet weak var customLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        print("cell created")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  CustomCellTableViewCell.swift
//  ContactBook
//
//  Created by Saltanat Nareshova on 09.02.2021.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    @IBOutlet weak var contactImageView: UIImageView!
    
    @IBOutlet weak var contactName: UILabel!
    
    @IBOutlet weak var contactNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

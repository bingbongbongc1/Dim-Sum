//
//  listTableViewCell.swift
//  Dim Sum
//
//  Created by Leung, Shelley on 10/4/16.
//  Copyright © 2016 Leung, Shelley. All rights reserved.
//

import UIKit

class listTableViewCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

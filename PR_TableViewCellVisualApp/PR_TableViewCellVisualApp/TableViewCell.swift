//
//  TableViewCell.swift
//  PR_TableViewCellVisualApp
//
//  Created by user209373 on 3/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mainText: UILabel!
    
    @IBOutlet weak var detailText: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  TrackTableViewCell.swift
//  Quiz 3 practice
//
//  Created by user209373 on 3/30/22.
//

import UIKit

class TrackTableViewCell: UITableViewCell {

    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var trackPriceLabel: UILabel!
    
    
    @IBOutlet weak var trackReleaseDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

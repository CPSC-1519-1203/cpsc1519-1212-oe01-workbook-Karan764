//
//  TrackTableViewCell.swift
//  PR_Quiz3_practice
//
//  Created by user209373 on 3/25/22.
//

import UIKit

class TrackTableViewCell: UITableViewCell {

    let trackName: [String] = []
    let i = 1
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    
    }
    
    for i in 1..50{
        trackName.append("Track #\(n)")
         n = n +1
        
    }
    

}

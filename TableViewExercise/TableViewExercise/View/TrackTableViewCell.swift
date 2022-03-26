//
//  TrackTableViewCell.swift
//  TableViewExercise
//
//  Created by user209373 on 3/25/22.
//

import UIKit

class TrackTableViewCell: UITableViewCell {

    
    @IBOutlet weak var trackName: UILabel!
    
    @IBOutlet weak var trackPrice: UILabel!
    
    @IBOutlet weak var releaseDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

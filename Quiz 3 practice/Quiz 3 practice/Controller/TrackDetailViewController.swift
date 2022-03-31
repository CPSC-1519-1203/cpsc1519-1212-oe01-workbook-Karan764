//
//  TrackDetailViewController.swift
//  Quiz 3 practice
//
//  Created by user209373 on 3/30/22.
//

import UIKit

class TrackDetailViewController: UIViewController {

    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var trackPriceLabel: UILabel!
    
    @IBOutlet weak var trackReleaseDate: UILabel!
    
    var selectedTrack: Track
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

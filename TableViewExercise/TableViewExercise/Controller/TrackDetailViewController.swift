//
//  TrackDetailViewController.swift
//  TableViewExercise
//
//  Created by user209373 on 3/25/22.
//

import UIKit

class TrackDetailViewController: UIViewController {
    var selectedTrack: Track?
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    
    @IBOutlet weak var releaseDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let currentTrack  = selectedTrack{
            name.text = currentTrack.name
            price.text = "\(currentTrack.price)"
            releaseDate.text = "\(currentTrack.releaseDate)"
            
        }
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

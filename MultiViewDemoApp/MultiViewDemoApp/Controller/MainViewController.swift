//
//  MainViewController.swift
//  MultiViewDemoApp
//
//  Created by user209373 on 2/2/22.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let username = username{
            titleLabel?.text = username
        }
          
        
    }
    
   
    

    
    

}

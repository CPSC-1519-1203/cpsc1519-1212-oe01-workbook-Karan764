//
//  ViewController.swift
//  PR_MyFirstApp
//
//  Created by user209373 on 1/9/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties
    @IBOutlet var labelResult: UILabel!
    
    @IBOutlet weak var textDisplay: UITextField!
    
    // MARK: Methods
    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text = textDisplay.text?.uppercased()
        print(labelResult.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}



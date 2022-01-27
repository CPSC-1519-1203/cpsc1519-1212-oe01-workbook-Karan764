//
//  ViewController.swift
//  PR_StepperApp
//
//  Created by user209373 on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelValue: UILabel!
    
    @IBOutlet weak var stepperValue: UIStepper!
    
    
    @IBAction func stepperChanged(_ sender: UIButton) {
        labelValue.text = "\(stepperValue.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


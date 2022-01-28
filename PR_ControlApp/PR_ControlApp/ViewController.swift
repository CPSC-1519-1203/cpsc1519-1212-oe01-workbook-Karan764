//
//  ViewController.swift
//  PR_ControlApp
//
//  Created by user209373 on 1/27/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var buttonObject: UIButton!
    
 
    
    @IBOutlet weak var label: UILabel!
    // @IBOutlet weak var switchObject: UIView!
    
    @IBOutlet weak var switchObj: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchInside(_ sender: Any) {
      //  buttonObject.setTitle(
       //     "New", for: UIControl.State.normal)
        switchObj.onTintColor = UIColor.red
        switchObj.tintColor = UIColor.blue
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if switchObj.isOn {
            label.text = "On"
        }
        else{
            label.text = "Off"
        }
    }
}


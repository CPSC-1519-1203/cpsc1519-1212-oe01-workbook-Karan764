//
//  ViewController.swift
//  PR_AlertControllerApp
//
//  Created by user209373 on 2/7/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
                    //Just dismiss the action sheet
                })
        alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)    }
    
}


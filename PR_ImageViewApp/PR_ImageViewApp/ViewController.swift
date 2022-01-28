//
//  ViewController.swift
//  PR_ImageViewApp
//
//  Created by user209373 on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            let touch = touches.first
            if touch?.view == imageView {
                print ("Touched")
            } else {
                print ("Nothing ")
            }
        }
}


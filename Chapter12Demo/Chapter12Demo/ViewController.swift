//
//  ViewController.swift
//  Chapter12Demo
//
//  Created by user209373 on 2/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var changeBackgroundColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func changeBackgroundColor(color: UIColor){
        self.view.backgroundColor = color
    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let alertTitle = "Background Color"
        let alertMessage = "Choose your background Color"
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .actionSheet)
        let yellowAction = UIAlertAction(title: "Yellow", style: .default) { action in
            self.view.backgroundColor = UIColor.yellow
            
        }
        alert.addAction(yellowAction)
        let greenAction = UIAlertAction(title: "Green", style: .default,  handler: {
            action -> Void in
            self.view.backgroundColor = UIColor.green
        })
        alert.addAction(greenAction)
        let magentaAction = UIAlertAction(title: "Magenta", style: .default, handler: { action in
            self.changeBackgroundColor(color: UIColor.magenta)
        })
        
        alert.addAction(magentaAction);
        
        if let ppc = alert.popoverPresentationController {
            ppc.sourceView = changeBackgroundColorButton
            ppc.sourceRect = changeBackgroundColorButton.bounds
            ppc.permittedArrowDirections = .up
            
        }
    }
    
    
    @IBAction func sayHello(_ sender: UIButton) {
        if let name = nameTextField.text {
            var alertTitle = ""
        var alertMessage = ""
            if name.isEmpty{
                alertTitle = "Validation Error"
                alertMessage = "Please enter your name"
                
            }
            else {
                alertTitle = "Greeting Message"
                alertMessage = "Welcome to iOS World \(name)"
            }
            //Step 1: Create a UIAlertController
            let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
            // Step 2: Create one or more UIAlertAction and add it to the UIAlert Controller
            let okAction = UIAlertAction(title: "OK", style: .default,handler: nil)
            alert.addAction(okAction)
            //Step 2: Present the alert
            present(alert, animated: true, completion: nil)
            
        }
        
        
        
    }
    
}


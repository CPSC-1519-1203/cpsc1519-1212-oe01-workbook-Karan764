//
//  ViewController.swift
//  Chapter08Demo
//
//  Created by user209373 on 1/17/22.
//

import UIKit
    
class ViewController: UIViewController {

    func convertToFahrenheit(forCelsiusValue celsius: Double) -> Double {
        var fahrenheitValue = 0.00
        fahrenheitValue  = 0.00
        fahrenheitValue = (celsius * 9/5)+32
        return fahrenheitValue
        
    }
    var currentCelsiusValue : Double = 0.00
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
        
    @IBOutlet weak var celsiusTextField: UITextField!
    
    @IBOutlet weak var celsiusStepper: UIStepper!
    
    @IBOutlet weak var celsiusSlider: UISlider!
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    //Like a constructor
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        celsiusTextField.text = "\(currentCelsiusValue)" // String interpolation
        
        logoImageView.isUserInteractionEnabled = true
        
        
    }


    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        currentCelsiusValue = Double(celsiusTextField.text!) ?? 0
        let fahrenheitValue = convertToFahrenheit(forCelsiusValue: currentCelsiusValue)
        fahrenheitLabel.text = "\(fahrenheitValue) ℉"
        celsiusStepper.value = currentCelsiusValue
        celsiusSlider.value = Float(currentCelsiusValue)
    }
    
    
    @IBAction func celsiusStepperChanged(_ sender: UIStepper) {
        currentCelsiusValue = celsiusStepper.value
        let fahrenheitValue = convertToFahrenheit(forCelsiusValue: currentCelsiusValue)
        fahrenheitLabel.text = "\(fahrenheitValue) ℉"
        celsiusTextField.text = "\(currentCelsiusValue)"
        celsiusSlider.value = Float(currentCelsiusValue)
    }
    
    @IBAction func celsiusSliderChanged(_ sender: UISlider) {
        currentCelsiusValue = Double(celsiusSlider.value)
        let fahrenheitValue = convertToFahrenheit(forCelsiusValue: currentCelsiusValue)
        fahrenheitLabel.text = "\(fahrenheitValue) ℉"
        celsiusTextField.text = "\(currentCelsiusValue)"
        celsiusStepper.value = currentCelsiusValue
    }
    
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        celsiusTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if touch?.view == logoImageView {
            print ("Touched")
        } else {
            print("not touched")
        }
        
        
    }
    
    
   
}


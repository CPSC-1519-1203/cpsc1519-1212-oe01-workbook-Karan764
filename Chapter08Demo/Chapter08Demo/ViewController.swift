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
    var currentCelsiusValue = 0.00
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    
    @IBOutlet weak var celsiusTextField: UITextField!
    
    @IBOutlet weak var celsiusStepper: UIStepper!
    
    @IBOutlet weak var celsiusSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        celsiusTextField.text = "\(currentCelsiusValue)"
        
        
    }


    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        currentCelsiusValue = Double(celsiusTextField.text)
        let fahrenheitValue = convertToFahrenheit(forCelsiusValue: currentCelsiusValue)
        fahrenheitLabel.text = "\(fahrenheitValue) ℉"
    }
    
    
    @IBAction func celsiusStepperChanged(_ sender: UIStepper) {
    }
    
    @IBAction func celsiusSliderChanged(_ sender: UISlider) {
    }
}


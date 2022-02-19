//
//  ViewController.swift
//  Chapter12PIckerViewDemo
//
//  Created by user209373 on 2/9/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .portrait
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provinces.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provinces[row] //row is equal to index
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedProvinceLabel.text = provinces[row]
    }
    

    @IBOutlet weak var provincePickerView: UIPickerView!
    
    
    @IBOutlet weak var selectedProvinceLabel: UILabel!
    
    //Define an array of province names
    let provinces = ["British Columbia", "Alberta", "Sasktechwan", "Manitoba"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // provincePickerView.dataSource = self
       // provincePickerView.delegate= self
                   
    }

    @IBAction func submitTapped(_ sender: UIButton) {
        let pickerIndex = provincePickerView.selectedRow(inComponent: 0)
        let proviceName = provinces[pickerIndex]
        let alert = UIAlertController(title: proviceName, message: "Would you like to move to Alberta", preferredStyle: .alert)
        if proviceName != "Alberta"{
            let yesAction = UIAlertAction(title: "Yes", style: .default) { action in
                self.selectedProvinceLabel.text = "You made a smart move"
            }
            alert.addAction(yesAction)
            let noAction = UIAlertAction(title: "No", style: .cancel) { action in
                self.selectedProvinceLabel.text = "That is fine"
                
            }
            alert.addAction(noAction)
            
        } else{
            let okAction = UIAlertAction(title: "OK", style: .destructive) { action in
                self.selectedProvinceLabel.text = "go oilers go!"
                
            }
            alert.addAction(okAction)
        }
        present(alert, animated: true, completion: nil)
        
    }
    
    
}


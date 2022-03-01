//
//  SlotMachineViewController.swift
//  Quiz02ReviewApp
//
//  Created by user209373 on 2/28/22.
//

import UIKit

class SlotMachineViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    //MARK:
    //MARK: Picker Data Source Methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        images.count
    }
    
    //MARk;
    //MARK: Picker Delegate Methods
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let currentImage = images[row]
        let currentImageView = UIImageView(image: currentImage)
        return currentImageView
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        64
    }
    let images = [
        UIImage(named: "seven")!,
        UIImage(named: "bar")!,
        UIImage(named: "crown")!,
        UIImage(named: "cherry")!,
        UIImage(named: "lemon")!,
        UIImage(named: "apple")!,
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

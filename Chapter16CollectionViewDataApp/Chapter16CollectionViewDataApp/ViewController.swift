//
//  ViewController.swift
//  Chapter16CollectionViewDataApp
//
//  Created by user209373 on 3/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    let petArray = ["Pet 1","Pet 2","Pet 3","Pet 4","Pet 5","Pet 6","Pet 7","Pet 8","Pet 9", "Pet 10"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        petArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        
        cell.itemLabel.text = petArray[indexPath.item]
        return cell
    }
    
    
}
extension ViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert  = UIAlertController(title: "Your Choice", message: "\(petArray[indexPath.item])", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}


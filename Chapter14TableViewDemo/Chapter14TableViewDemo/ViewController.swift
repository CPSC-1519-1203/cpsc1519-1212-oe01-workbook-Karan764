//
//  ViewController.swift
//  Chapter14TableViewDemo
//
//  Created by user209373 on 3/7/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell")
        
        cell?.textLabel?.text = characters[indexPath.row]
        cell?.textLabel?.font = UIFont.boldSystemFont(ofSize: 28)
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCharacter = characters[indexPath.row]
        let message = "You selected \(selectedCharacter)"
        let title = "Row Selected"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yes I did", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }

    @IBOutlet weak var charactersTableView: UITableView!
    
    private let characters = ["Sleepy","Sneezy","Bashful","Happy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


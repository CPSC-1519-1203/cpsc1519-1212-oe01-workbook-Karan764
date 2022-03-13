//
//  ViewController.swift
//  PR_TableViewCellVisualApp
//
//  Created by user209373 on 3/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let mainArray = ["Shuttle bus", "Hierarchy", "Exchange", "Padlock"]
    let detailArray = ["6am - 10pm", "Acme corporation", "Ideas worth sharing", "Access denied"]
    let imageArray = ["shuttle.png", "hierarchy.png", "exchange.png", "padlock.png"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return mainArray.count
        }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
            cell.mainText?.text = self.mainArray[indexPath.row]
            cell.detailText?.text = self.detailArray[indexPath.row]
            cell.imageView?.image = UIImage(named: self.imageArray[indexPath.row])
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedItem = mainArray[indexPath.row]
            let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
                //Just dismiss the action sheet
            })
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    
}


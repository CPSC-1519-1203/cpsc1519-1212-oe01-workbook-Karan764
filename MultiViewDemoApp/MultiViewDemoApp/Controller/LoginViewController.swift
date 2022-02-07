//
//  LoginViewController.swift
//  MultiViewDemoApp
//
//  Created by user209373 on 2/2/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let mainVC = segue.destination as? MainViewController
        
        // Pass the selected object to the new view controller.
        if let username = usernameTextField.text {
            mainVC?.username = username
        }
    }
    @IBAction func unwindMainVc(segue: UIStoryboardSegue){
        
    }
    @IBAction func loginTapped(_ sender: UIButton) {
        if let username = usernameTextField.text, let password = passwordTextField.text{
            let accountManager = UserAccountManage()
            if accountManager.isValidAccount(forUsername: username, forPassword: password){
                performSegue(withIdentifier: "toMainSegue", sender: self)
            }
            else{
                print("invalid username and/or password")
            }
                
        }
    }
}

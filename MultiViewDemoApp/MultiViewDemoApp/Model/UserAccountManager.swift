//
//  UserAccountsManager.swift
//  MultiViewDemoApp
//
//  Created by user209373 on 2/2/22.
//

import Foundation

struct UserAccountManage{
    var accountDictonary: [String: String] = [
        "alex": "Werner",
        "gurdev": "Lotey",
        "karan": "Bhagwani",
        "mohammad": "Mannan",
        "zane": "Kozmak"
    ]
    // isValidAccount: forUserName: forPassword    This is how it will be called
    func isValidAccount(forUsername username: String, forPassword password: String) -> Bool {
        var validAccount = false
       
        if accountDictonary[username] == password {
            validAccount = true
        }
        
        return validAccount
    }
}

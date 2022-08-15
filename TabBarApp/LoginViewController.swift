//
//  ViewController.swift
//  TabBarApp
//
//  Created by 19543442 on 11.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var passwordText: UITextField!
    @IBOutlet var userNameText: UITextField!
    
    private let userName = "Lika"
    private let pass = "Money"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let insideVC = segue.destination as? InsideViewController else { return }
        insideVC.welcomUservalue = userName
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
 
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "LoginScreen" {
            if userNameText.text != userName || passwordText.text != pass {
                showAlert(with: "Login or Password is incorrect", and: "Please, enter correct Login and Password")
                passwordText.text = ""
                return false
            } else {
               print("OK")
            }
        }
        return true
    }
    
 // MARK: - Button actions
    
    @IBAction func fogotName() {
        showAlert(with: "OOPS!", and: "Your name is \(userName) 👧🏻")
        return
    }
    
    @IBAction func fogotPass() {
        showAlert(with: "OOPS!", and: "Your pass is \(pass) 💰")
        return
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        passwordText.text = ""
        userNameText.text = ""
    }
}

// MARK: - Alerts

extension LoginViewController {
  
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

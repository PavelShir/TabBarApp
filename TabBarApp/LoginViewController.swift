//
//  ViewController.swift
//  TabBarApp
//
//  Created by 19543442 on 11.08.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var passwordText: UITextField!
    @IBOutlet var userNameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let insideVC = segue.destination as? InsideViewController else { return }
        insideVC.welcomUservalue = "Welcom " + (userNameText.text ?? "")
      
    }
    
    @IBAction func fogotName() {
        showAlert(with: "OOPS!", and: "Your name is Lika 👧🏻")
        return
    }
    
    @IBAction func fogotPass() {
        showAlert(with: "OOPS!", and: "Your pass is Money 💰")
        return
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
   //    guard let insideVC = segue.destination as? InsideViewController else {return}
      
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

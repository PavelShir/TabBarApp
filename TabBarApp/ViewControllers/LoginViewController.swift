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
    
    private let person = Person(userName: "Lika", userSurname: "G", userGender: .women, userAge: 35, userProfession: .hr, image: "person foto")
    private let user = UserLogin(user: "1", password: "1")
    
    //private let userName = "1"
    //private let pass = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if let userVC = viewController as? UserViewController {
                userVC.welcomUservalue = user.user
            } else if let navigateVC = viewController as? UINavigationController {
                guard let detailsVC = navigateVC.topViewController as? DetailsViewController else { return }
                detailsVC.title = user.user
                detailsVC.personImage.image = UIImage(named: person.image)
            }
            
        }
       // guard let navigateVC = segue.destination as? UINavigationController else { return }
        
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
 
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "LoginScreen" {
            if userNameText.text != user.user || passwordText.text != user.password {
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
        showAlert(with: "OOPS!", and: "Your name is \(user.user) 👧🏻")
        return
    }
    
    @IBAction func fogotPass() {
        showAlert(with: "OOPS!", and: "Your pass is \(user.password) 💰")
        return
    }
    
    @IBAction func unwindSegue(_ segue: UITabBarController) {
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

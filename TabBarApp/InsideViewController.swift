//
//  InsideViewController.swift
//  TabBarApp
//
//  Created by 19543442 on 14.08.2022.
//

import UIKit

class InsideViewController: UIViewController {

    @IBOutlet var welcomeUser: UILabel!
    @IBOutlet var HiLabel: UILabel!
    
    var welcomUservalue: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUser.text = welcomUservalue
        
        
       // WelcomeUser.text = "Welcom" + (textFieldName.userNameText.text ?? "")
        HiLabel.text = "👋"

    }
    
    
    
    
}

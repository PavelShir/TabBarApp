//
//  InsideViewController.swift
//  TabBarApp
//
//  Created by 19543442 on 14.08.2022.
//

import UIKit

class InsideViewController: UIViewController {

    @IBOutlet var WelcomeUser: UILabel!
    @IBOutlet var HiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HiLabel.text = "👋"

    }
    
    
    @IBAction func Logout() {
        dismiss(animated: true)
    }
    
}

//
//  DetailsViewController.swift
//  TabBarApp
//
//  Created by 19543442 on 16.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var personImage: UIImageView!
    
    var personFoto: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personImage.image = UIImage(named: personFoto ?? "")

    }
    
    
    
}

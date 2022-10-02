//
//  WelcomeViewController.swift
//  HW 2.06
//
//  Created by Евгений Д on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var nameUser: String!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome,\(nameUser!)!"
    }
    
    @IBAction func LogoutButton() {
        
    }
}

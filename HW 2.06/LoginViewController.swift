//
//  LoginViewController.swift
//  HW 2.06
//
//  Created by Евгений Д on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "1"
    let userPass = "1"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1111 Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.nameUser = userNameTF.text
        
    }
    @IBAction func loginButton() {
        if userNameTF.text == userName && passwordTF.text == userPass {
            return
        } else {
            passwordTF.text = ""
            Warning()
        }
    }
    
    @IBAction func RemindUserName() {
        let reminderLogin = UIAlertController(title: "Oops!", message: "You name is 1", preferredStyle: .alert)
        let reminderButton = UIAlertAction(title: "OK", style: .cancel)
        reminderLogin.addAction(reminderButton)
        present(reminderLogin, animated: true)
    }
    
    @IBAction func RemindPassword() {
        let reminderPassword = UIAlertController(title: "Oops!", message: "You password is 1", preferredStyle: .alert)
        let reminderButton = UIAlertAction(title: "OK", style: .cancel)
        reminderPassword.addAction(reminderButton)
        present(reminderPassword, animated: true)
    }
    
    func Warning() {
        let alertLogin = UIAlertController(title: "Oops!", message: "You name or password incorrect", preferredStyle: .alert)
        let alertButton = UIAlertAction(title: "OK", style: .cancel)
        alertLogin.addAction(alertButton)
        present(alertLogin, animated: true)
    }
    
}

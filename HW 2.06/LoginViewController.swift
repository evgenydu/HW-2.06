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
    
    private let userName = "1"
    private let userPass = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.nameUser = userNameTF.text
    }
    
    @IBAction func loginButton() {
        guard userNameTF.text == userName, passwordTF.text == userPass else {
            warning(title: "Oops!", message: "You name or pass incorect")
            return
        }
    }
    
    @IBAction func remindUserNameAndPass(_ sender: UIButton) {
        sender.tag == 0
        ? warning(title: "Oops!", message: "Your name is \(userName)")
        : warning(title: "Oops!", message: "Your pass is \(userPass)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func warning(title: String, message: String, textField: UITextField? = nil) {
        let alertLogin = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertButton = UIAlertAction(title: "OK", style: .cancel) { _ in
            textField?.text = ""
        }
        alertLogin.addAction(alertButton)
        present(alertLogin, animated: true)
    }
}
